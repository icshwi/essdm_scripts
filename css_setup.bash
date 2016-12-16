#!/bin/bash
#
#  Copyright (c) 2016 Jeong Han Lee
#  Copyright (c) 2016 European Spallation Source ERIC
#
#  The program is free software: you can redistribute
#  it and/or modify it under the terms of the GNU General Public License
#  as published by the Free Software Foundation, either version 2 of the
#  License, or any newer version.
#
#  This program is distributed in the hope that it will be useful, but WITHOUT
#  ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or
#  FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public License for
#  more details.
#
#  You should have received a copy of the GNU General Public License along with
#  this program. If not, see https://www.gnu.org/licenses/gpl-2.0.txt
#
# Author : Jeong Han Lee
# email  : han.lee@esss.se
# Date   : 
# version : 0.0.1
#
declare -gr SC_SCRIPT="$(realpath "$0")"
declare -gr SC_SCRIPTNAME="$(basename "$SC_SCRIPT")"
declare -gr SC_TOP="$(dirname "$SC_SCRIPT")"
#declare -gr SC_TOP="$(dirname $BASH_SOURCE)"
declare -gr SC_LOGDATE="$(date +%Y%b%d-%H%M-%S%Z)"

declare hostname_cmd="$(hostname)"
export  _HOST_NAME="$(tr -d ' ' <<< $hostname_cmd )"
export  _HOST_IP="$(ping -n  -c 1 ${_HOST_NAME} | awk 'BEGIN {FS="[=]|[ ]"} NR==2 {print $4}' | cut -d: -f1)";
export  _USER_NAME="$(whoami)"


function pushd() { builtin pushd "$@" > /dev/null; }
function popd()  { builtin popd  "$@" > /dev/null; }

function __ini_func() { printf "\n>>>> You are entering in  : %s\n" "${1}"; }
function __end_func() { printf "\n<<<< You are leaving from : %s\n" "${1}"; }

function __checkstr() {
    if [ -z "$1" ]; then
	printf "%s : input variable is not defined \n" "${FUNCNAME[*]}"
	exit 1;
    fi
}

# Generic : git_clone
# 1.0.3 Tuesday, November  8 18:13:44 CET 2016
#
# Required Global Variable
# - SC_LOGDATE      : Input

function git_clone() {
    
    local func_name=${FUNCNAME[*]}; __ini_func ${func_name};
    
    local git_src_dir=$1;
    local git_src_url=$2;
    local git_src_name=$3;
    local tag_name=$4;
    
    __checkstr ${SC_LOGDATE};
    
    if [[ ! -d ${git_src_dir} ]]; then
	printf "No git source repository in the expected location %s\n" "${git_src_dir}";
    else
	printf "Old git source repository in the expected location %s\n" "${git_src_dir}";
	printf "The old one is renamed to %s_%s\n" "${git_src_dir}" "${SC_LOGDATE}";
	mv  ${git_src_dir} ${git_src_dir}_${SC_LOGDATE}
    fi
    
    # Always fresh cloning ..... in order to workaround any local 
    # modification in the repository, which was cloned before. 
    #
    # we need the recursive option in order to build a web based viewer for Archappl
    if [ -z "$tag_name" ]; then
	git clone --recursive "${git_src_url}/${git_src_name}" "${git_src_dir}";
    else
	git clone --recursive -b "${tag_name}" --single-branch --depth 1 "${git_src_url}/${git_src_name}" "${git_src_dir}";
    fi

    __end_func ${func_name};
}


function update_css_configuration() {

    local func_name=${FUNCNAME[*]}; __ini_func ${func_name};
    local css_diirt_dir="${HOME}/configuration/diirt";
    
    mkdir -p ${css_diirt_dir};
    pushd ${css_diirt_dir};
    cp -R ${CSS_DIR}/configuration/diirt/* ${css_diirt_dir};
    popd;
    

    __end_func ${func_name};
}


function download_css() {

    local func_name=${FUNCNAME[*]}; __ini_func ${func_name};

    local css_url="https://artifactory01.esss.lu.se/artifactory/list/CS-Studio/${CSS_TYPE}/${CSS_VERSION}";
    local css_filename="cs-studio-ess-${CSS_VERSION}-linux.gtk.x86_64.tar.gz";

    $wget_command ${css_url}/${css_filename} 



    ${SUDO_CMD} -v

    if [[ -L ${CSS_DIR} && -d ${CSS_DIR} ]]
    then
	printf "%s is a symlink to a directory, so removing it.\n" "${CSS_DIR}";
	${SUDO_CMD} rm ${CSS_DIR}
    fi

    if [[ -d ${CSS_DIR} ]]
    then
	printf "$s is the physical directory, it should NOT be." "${CSS_DIR}";
	printf "Please check it, and the old %s is renamed to %s\n" "${CSS_DIR}" "${CSS_DIR}-PLEASECHECK-${SC_LOGDATE}"
	${SUDO_CMD} mv ${CSS_DIR} ${CSS_DIR}-PLEASECHECK-${SC_LOGDATE}
    fi
    
    ${SUDO_CMD} $tar_command ${css_filename}  -C ${CSS_TOP}
    ${SUDO_CMD} mv ${CSS_DIR} ${CSS_DEPLOY_DIR}
    ${SUDO_CMD} ln -s ${CSS_DEPLOY_DIR} ${CSS_DIR}
    
    local css_hack_shell="css"

    cat > ${css_hack_shell} <<EOF
#!/bin/sh
#  Generated at  ${SC_LOGDATE}     
#            on  ${_HOST_NAME}  
#                ${_HOST_IP}
#            by  ${_USER_NAME}
#                ${SC_TOP}/${SC_SCRIPTNAME}
#
#  Jeong Han Lee, han.lee@esss.se
# 
#  This file should be in ${CSS_DIR}/ 
#
cd \${HOME}

exec "${CSS_DIR}/ESS CS-Studio"

EOF

    chmod a+x ${css_hack_shell}
    ${SUDO_CMD} mv ${css_hack_shell} ${CSS_DIR}/ ;
    ${SUDO_CMD} ln -sf "${CSS_DIR}/css" /usr/local/bin/css
# Not easy how all configuration is going to evolve
# it works 4.4.1.2, but I am not sure it works with other versions...
    local css_ini="${CSS_DIR}/ESS CS-Studio.ini";
#    ${SUDO_CMD} ln -sf ${css_ini} ${CSS_DIR}/css.ini
    ${SUDO_CMD} sed -i "s|-Dorg.eclipse.swt.browser.XULRunnerPath=\/ess\/xulrunner\/|-Dorg.eclipse.swt.browser.XULRunnerPath=|g" "${css_ini}"
    
    __end_func ${func_name};
}

declare -gr CSS_TOP="/opt";
declare -gr CSS_DIR=${CSS_TOP}/cs-studio
declare -gr CSS_VERSION="4.4.1.2"
declare -gr CSS_TYPE="development"
declare -gr CSS_DEPLOY_DIR=${CSS_DIR}_${CSS_VERSION}_${SC_LOGDATE}

declare -gr SUDO_CMD="sudo";


wget_command="wget -c"
tar_command="tar xzf"


download_css

update_css_configuration
