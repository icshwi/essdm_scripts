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
# Shell  : dm_setup.bash
# Author : Jeong Han Lee
# email  : han.lee@esss.se
# Date   : 
# version : 0.9.7-rc1
#
# 
# PREFIX : SC_, so declare -p can show them in a place
# 
# Generic : Global vaiables - readonly
#
declare -gr SC_SCRIPT="$(realpath "$0")"
declare -gr SC_SCRIPTNAME="$(basename "$SC_SCRIPT")"
declare -gr SC_TOP="$(dirname "$SC_SCRIPT")"
declare -gr SC_LOGDATE="$(date +%Y%b%d-%H%M-%S%Z)"
declare -gr SC_IOCUSER="$(whoami)"


declare -gr SUDO_CMD="sudo";


# Generic : Redefine pushd and popd to reduce their output messages
# 
function pushd() { builtin pushd "$@" > /dev/null; }
function popd()  { builtin popd  "$@" > /dev/null; }

function ini_func() { sleep 1; printf "\n>>>> You are entering in  : %s\n" "${1}"; }
function end_func() { sleep 1; printf "\n<<<< You are leaving from : %s\n" "${1}"; }

function checkstr() {
    if [ -z "$1" ]; then
	printf "%s : input variable is not defined \n" "${FUNCNAME[*]}"
	exit 1;
    fi
}

function printf_tee() {
    local input=${1}; local target=${2}; local command="";
    # If target exists, it will be overwritten.
    ${SUDO_CMD} printf "%s" "${input}" | ${SUDO_CMD} tee "${target}";
}

function sudo_start() {
    ${SUDO_CMD} -v
    ( while [ true ]; do
	  ${SUDO_CMD} -n /bin/true;
	  sleep 60;
	  kill -0 "$$" || exit;
      done 2>/dev/null
    )&
}


# Generic : git_clone
# 1.0.3 Tuesday, November  8 18:13:44 CET 2016
#
# Required Global Variable
# - SC_LOGDATE      : Input

function git_clone() {
    
    local func_name=${FUNCNAME[*]}; ini_func ${func_name};
    
    local git_src_dir=$1;
    local git_src_url=$2;
    local git_src_name=$3;
    local tag_name=$4;
    
    checkstr ${SC_LOGDATE};
    
    if [[ ! -d ${git_src_dir} ]]; then
	printf "No git source repository in the expected location %s\n" "${git_src_dir}";
    else
	printf "Old git source repository in the expected location %s\n" "${git_src_dir}";
	printf "The old one is renamed to %s_%s\n" "${git_src_dir}" "${SC_LOGDATE}";
	mv  ${git_src_dir} ${git_src_dir}_${SC_LOGDATE}
    fi
    
    # Alwasy fresh cloning ..... in order to workaround any local 
    # modification in the repository, which was cloned before. 
    #
    # we need the recursive option in order to build a web based viewer for Archappl
    if [ -z "$tag_name" ]; then
	git clone --recursive "${git_src_url}/${git_src_name}" "${git_src_dir}";
    else
	git clone --recursive -b "${tag_name}" --single-branch --depth 1 "${git_src_url}/${git_src_name}" "${git_src_dir}";
    fi

    end_func ${func_name};
}

# Generic : git_selection
#
# 1.1.0 : Monday, October 10 09:23:24 CEST 2016
#
# Require Global vairable
# - SC_SELECTED_GIT_SRC  : Output
#
function git_selection() {

    local func_name=${FUNCNAME[*]}; ini_func ${func_name};

    local git_ckoutcmd="";
    local checked_git_src="";

    declare -i index=0;
    declare -i master_index=0;
    declare -i list_size=0;
    declare -i selected_one=0;
    declare -a git_src_list=();
    
    local n_tags=${1};

    # no set n_tags, set default 10
    if [[ ${n_tags} -eq 0 ]]; then
	n_tags=10;
    fi

    git_src_list+=("master");

    # git_tags=$(git describe --tags `git rev-list --tags --max-count=${n_tags}`);
    # git_exitstatus=$?
    # if [ $git_exitstatus = 0 ]; then
    # 	#
    # 	# (${}) and ($(command))  are important to separate output as an indiviaul arrar
    # 	#
    # 	git_src_list+=(${git_tags});
    # else
    # 	# In case, No tags can describe, use git tag instead of git describe
    # 	#
    # 	# fatal: No tags can describe '7fce903a82d47dec92012664648cacebdacd88e1'.
    # 	# Try --always, or create some tags.
    # doesn't work for CentOS7
    #    git_src_list+=($(git tag -l --sort=-refname  | head -n${n_tags}))
    # fi

    git_src_list+=($(git tag -l | sort -r | head -n${n_tags}));

    
    for tag in "${git_src_list[@]}"
    do
	printf "%2s: git src %34s\n" "$index" "$tag";
	let "index = $index + 1";
    done
    
    echo -n "Select master or one of tags which can be built, followed by [ENTER]: "
    
    # don't wait for 3 characters 
    # read -e -n 2 line
    read -e line
    
    # convert a string to an integer?
    # do I need this? 
    # selected_one=${line/.*}

    # Without selection number, type [ENTER], 0 is selected as default.
    #
    selected_one=${line};
    let "list_size = ${#git_src_list[@]} - 1";
    
    if [[ "$selected_one" -gt "$list_size" ]]; then
	printf "\n>>> Please select one number smaller than %s\n" "${list_size}";
	exit 1
    fi
    if [[ "$selected_one" -lt 0 ]]; then
	printf "\n>>> Please select one number larger than 0\n"; 
	exit 1
    fi

    SC_SELECTED_GIT_SRC="$(tr -d ' ' <<< ${git_src_list[line]})";
    
    printf "\n>>> Selected %34s --- \n" "${SC_SELECTED_GIT_SRC}\n";

    if [ "$selected_one" -ne "$master_index" ]; then
	
	git_ckoutcmd="git checkout tags/${SC_SELECTED_GIT_SRC}";
	$git_ckoutcmd;

	checked_git_src="$(git describe --exact-match --tags)";
	checked_git_src="$(tr -d ' ' <<< ${checked_git_src})";
	
	printf "\n>>> Selected : %s --- \n>>> Checkout : %s --- \n" "${SC_SELECTED_GIT_SRC}" "${checked_git_src}";
	
	if [ "${SC_SELECTED_GIT_SRC}" != "${checked_git_src}" ]; then
	    printf "Something is not right, please check your git reposiotry\n";
	    exit 1
	fi
    else
	git_ckoutcmd="git checkout ${SC_SELECTED_GIT_SRC}";
	$git_ckoutcmd;
    fi
    
    end_func ${func_name};
    
}


#
# Specific only for this script : Global vairables - readonly
#
declare -g  ANSIBLE_VARS=""
declare -gr RSYNC_EPICS_LOG="/tmp/rsync-epics.log"
declare -gr RSYNC_STARTUP_LOG="/tmp/rsync-startup.log"
declare -gr ANSIBLE_LOG="/var/log/ansible.log"
declare -g  GUI_STATUS=""


function print_logrotate_rule() {

    local logfile=${1};
    local user=${2};
    printf "%s {\nmissingok\nnotifempty\nsize 100k\nyearly\ncreate 0666 %s %s\n}" "${logfile}" "${user}" "${user}";
    
}



# Specific : preparation
#
# Require Global vairable
# - SUDO_CMD :  input
# - 

function preparation() {
    
    local func_name=${FUNCNAME[*]}; ini_func ${func_name};
    checkstr ${SUDO_CMD};

    # yum, repository
    declare -r yum_pid="/var/run/yum.pid"
    declare -r yum_repo_dir="/etc/yum.repos.d"
    declare -r rpmgpgkey_dir="/etc/pki/rpm-gpg/"
    declare -r repo_centos="CentOS-Base.repo"
    declare -r repo_epel="epel-19012016.repo"
    declare -r rpmgpgkey_epel="RPM-GPG-KEY-EPEL-7"
    declare -r ess_repo_url="https://artifactory01.esss.lu.se/artifactory/list/devenv/repositories/repofiles"

    # ansible 
    local ansible_cfg="/etc/ansible/ansible.cfg";
    local ansible_logrotate="/etc/logrotate.d/ansible";
    local ansible_logrotate_rule=$(print_logrotate_rule "${ANSIBLE_LOG}" "${SC_IOCUSER}");
    local ansilbe_log_init=$(printf "Note that ansible is not running currently,\nPlease wait for it, it will show up here soon....\nThis screen is updated every 2 seconds, to check the ansible log file in %s\n" "${ANSIBLE_LOG}");
    

    ${SUDO_CMD} systemctl stop packagekit
    ${SUDO_CMD} systemctl disable packagekit
    
    # Somehow, yum is running due to PackageKit, so if so, kill it
    #
    if [[ -e ${yum_pid} ]]; then
	${SUDO_CMD} kill -9 $(cat ${yum_pid})
	if [ $? -ne 0 ]; then
	    printf "Remove the orphan yum pid\n";
	    ${SUDO_CMD} rm -rf ${yum_pid}
	fi
    fi
        

    # Necessary to clean up the existent CentOS repositories
    #
    ${SUDO_CMD} find ${yum_repo_dir} -mindepth 1 -maxdepth 1 -exec rm -rf '{}' \;
    ${SUDO_CMD} rm -rf ${rpmgpgkey_dir}/${rpmgpgkey_epel}
    
    # Download the ESS customized repository files and its RPM GPG KEY file
    #
    ${SUDO_CMD} curl \
		-o ${yum_repo_dir}/${repo_centos}     ${ess_repo_url}/CentOS-Vault-7.1.1503.repo \
		-o ${yum_repo_dir}/${repo_epel}       ${ess_repo_url}/${repo_epel} \
		-o ${rpmgpgkey_dir}/${rpmgpgkey_epel} ${ess_repo_url}/${rpmgpgkey_epel}
    
    
    # Install "git and ansible" and logrotate for real works
    # 
    ${SUDO_CMD} yum -y install git ansible logrotate;

    # Enable the ansible log its path is /var/log/ansible.log
    ${SUDO_CMD} sed -i~ "s/#log_path =/log_path =/g" "${ansible_cfg}";

    # the initial log message
    printf_tee "${ansilbe_log_init}" "${ANSIBLE_LOG}";

    # change the permission 
    ${SUDO_CMD} chmod 666 ${ANSIBLE_LOG};
    
    # Enable the logrotate for ansible log
    
    printf_tee "${ansible_logrotate_rule}" "${ansible_logrotate}";

    end_func ${func_name};
}


function is-active-ui() {

    local func_name=${FUNCNAME[*]}; ini_func ${func_name};
    
    GUI_STATUS="$(systemctl is-active graphical.target)";

    if [[ ${GUI_STATUS} = "active" ]]; then
	# If a system has the GUI, it returns "active"
	printf "\n User Interface was detected, \nexecute the monitoring terminal for the EEE Rsync status and install the required packages for them.\n\n";
	
	${SUDO_CMD} yum -y install xterm xorg-x11-fonts-misc
	nice xterm -title "EEE rsync status" -geometry 140x15+0+0   -e "nice watch -n 2 tail -n 10 ${RSYNC_EPICS_LOG}"&
	nice xterm -title "ANSIBLE   status" -geometry 140x15+0+190 -e "nice watch -n 2 tail -n 10 ${ANSIBLE_LOG}"&
    else
	# If a system has the NO GUI, it returns "inactive"
	printf "\n NO User Interface was detected, install the required packages to work around ansible errors\n\n";
	# In minimal image, minimal selection case : 
	# unzip doesn't be ready to use, force to install it
	#
	# Package "redhat-menus" creates the /etc/xdg/menus directory,
	# so ansible can copy their menu/* files into
	# /etc/xdg/menus/applications-merged
	#
	# Fortunately, these packages has no other heavy dependency on
	# other packages.
	# 
	${SUDO_CMD} yum -y install unzip redhat-menus xdg-utils
    fi

    end_func ${func_name};
}

function yum_gui(){

    local func_name=${FUNCNAME[*]}

    ini_func ${func_name}
    
    checkstr ${SUDO_CMD}


    ${SUDO_CMD} yum -y groupinstall "Gnome Desktop"
    ${SUDO_CMD} yum -y install lightdm
    #systemctl set-default graphical.target

    ${SUDO_CMD} systemctl disable gdm.service
    ${SUDO_CMD} systemctl enable lightdm.service
    
    end_func ${func_name}  
}


function packages() {
    
    local func_name=${FUNCNAME[*]}; ini_func ${func_name};
    checkstr ${SUDO_CMD};
    declare -a package_list=();

    package_list+="emacs tree screen telnet nano";
    package_list+=" ";
    package_list+="xterm xorg-x11-fonts-misc";
    package_list+=" ";
    package_list+="net-snmp net-snmp-utils"
    package_list+=" ";
    # carchivetools_setup
    package_list+="python-twisted-core python-twisted-web numpy";
    package_list+=" ";
        
    ${SUDO_CMD} yum -y install ${package_list}; 

    end_func ${func_name}
}

function yum_extra(){
    
    local func_name=${FUNCNAME[*]}; ini_func ${func_name};
    checkstr ${SUDO_CMD};
    # declare -a package_list=();

    # package_list+="emacs tree screen telnet nano";
    # package_list+=" ";
    # package_list+="xterm xorg-x11-fonts-misc";
    # package_list+=" ";
    # package_list+="net-snmp net-snmp-utils"
    # package_list+=" ";
    
    # ${SUDO_CMD} yum -y install ${package_list}; 

    # # Now it is safe to run update by an user, let them do this job.
    
    ${SUDO_CMD} yum -y update
    
    end_func ${func_name}
}



function update_eeelocal_parameters() {

    local func_name=${FUNCNAME[*]}; ini_func ${func_name};
    checkstr ${SC_GIT_SRC_DIR}; checkstr ${SC_IOCUSER};

    local target_dir=${SC_GIT_SRC_DIR}/roles/EEElocal

    # Replace the default user (ess) with the user who executes this script (whoami)
    printf "... Replace the default user (ess) with \"%s\" in %s\n\n" "${SC_IOCUSER}" "${target_dir}/tasks/main.yml";

    # It is the bad idea to have the same "ess" in everywhere

    # is needed to transfer bash variable into sed
    sed -i~ "s/name=ess/name=${SC_IOCUSER}/g"     "${target_dir}/tasks/main.yml"
    sed -i  "s/a user ess/a user ${SC_IOCUSER}/g" "${target_dir}/tasks/main.yml"
    sed -i  "s/owner=ess/owner=${SC_IOCUSER}/g"   "${target_dir}/tasks/main.yml"
    
    # Replace the default user, and add log files for rsync-epics.service and rsync-startup.service
    printf "... Replace the default user (ess) with \"%s\" in %s \n\n... Add logfiles in %s\n" \
	   "${SC_IOCUSER}" "${target_dir}/files/rsync-{epics,startup}.service" \
	   "/tmp/rsync-{epics,startup}.log";

    
    
    local rsync_server="rsync://owncloud01.esss.lu.se:80";

    # - .git directory should not be in EEE. 
    # - Does CentOS EEE need ELDK EEE stuffs? (*)
    # - Do we still need SL6-x86_64 - Scientific Linux?
    # - Why do we have EPICS Base 3.15.2 still?
    #
    # Anyway, the above list is excluded in the rsync option. ELDK EEE may be considered later, but the others are self-evidence, ICS doesn't need them in
    # EEE. So, save time, save a network traffic.
    # 
    local rsync_general_option="--recursive --links --perms --times --timeout 120 --exclude='.git/' --exclude='SL6-x86_64/' --exclude='*eldk*/' --exclude='*3.15.2/' ";

    local rsync_epics_option="${rsync_general_option} --log-file=${RSYNC_EPICS_LOG} ";
    local rsync_startup_option="${rsync_general_option} --log-file=${RSYNC_STARTUP_LOG} ";

    #
    # Rsync appends its log the existent log file, so I copy them in different time
    # Do we need to track down?

    # cp ${RSYNC_EPICS_LOG} ${RSYNC_EPICS_LOG}_${SC_LOGDATE}
    # cp ${RSYNC_STARTUP_LOG} ${RSYNC_STARTUP_LOG}_${SC_LOGDATE}

    # # Nullify them 
    # # 
    #cat /dev/null > ${RSYNC_EPICS_LOG};
    #cat /dev/null > ${RSYNC_STARTUP_LOG};


    # Enable the logrotate for ansible log

    declare -r rsync_epics_logrotate="/etc/logrotate.d/rsync_epics";
    declare -r rsync_startup_logrotate="/etc/logrotate.d/rsync_startup";

    declare rsync_epics_logrotate_rule=$(print_logrotate_rule "${RSYNC_EPICS_LOG}"   "${SC_IOCUSER}");
    declare rsync_startup_logrotate_rule=$(print_logrotate_rule "${RSYNC_STARTUP_LOG}" "${SC_IOCUSER}");
    
    printf_tee "${rsync_epics_logrotate_rule}" "${rsync_epics_logrotate}";
    printf_tee "${rsync_startup_logrotate_rule}" "${rsync_startup_logrotate}";
    
    
    # Add some information before showing actual log information of RSYNC
    # Only valid at the first instalation
    #
    cat > ${RSYNC_EPICS_LOG} <<EOF

Note that rsync-epics.servive is not running currently,
Please wait for it, it will show up here soooon......
This screen is updated every 2 seconds, to check the rsync log file
in ${RSYNC_EPICS_LOG}. 

EOF
    cat > ${RSYNC_STARTUP_LOG} <<EOF

Note that rsync-startup.servive is not running currently,
Please wait for it, it will show up here soooon......
This screen is updated every 2 seconds, to check the rsync log file
in ${RSYNC_EPICS_LOG}. 

EOF
    cat > ${target_dir}/files/rsync-epics.service <<EOF
[Unit]
Description=Script that syncs epics folder from the EEE server, hacked by dm_setup.bash

[Service]
ExecStart=/usr/bin/bash -c "rsync ${rsync_epics_option} ${rsync_server}/epics /opt/epics --chmod=Dugo=rwx,Fuog=rwx"
User=${SC_IOCUSER}

[Install]
WantedBy=multi-user.target

EOF
    
    cat > ${target_dir}/files/rsync-startup.service <<EOF
[Unit]
Description=Script that syncs startup folder from the EEE server

[Service]
ExecStart=/usr/bin/bash -c "rsync ${rsync_startup_option} ${rsync_server}/startup /opt/startup --chmod=Dugo=rwx,Fuog=rwx"
User=${SC_IOCUSER}

[Install]
WantedBy=multi-user.target
EOF

    end_func ${func_name};  
    
}


# Copy the diirt configuration from /opt/cs-studio/configuation/diirt  to $HOME/configuration/diirt
#
function update_css_configuration() {

    local func_name=${FUNCNAME[*]}; ini_func ${func_name};
    local css_diirt_dir="${HOME}/configuration/diirt";
    
    mkdir -p ${css_diirt_dir};
    pushd ${css_diirt_dir};
    cp -R /opt/cs-studio/configuration/diirt/* ${css_diirt_dir};
    popd;
    end_func ${func_name};  
}



declare -g SSSD_status;
declare -g EEELOC_status;
declare -g EEENFS_status;
declare -g CSS_status;
declare -g XAL_status;
declare -g IPY_status;
declare -g LIGHTDM_status;
declare -g OPENBOX_status;
declare -g GNOME_status;



function debug_whiptail(){

    local choice;
    local name=$1;
    local choices=$2;
    local exit_status=$3;
    printf "\n";
    for choice in "${choices}"; do
	printf "%20s : debug\n" "$name";
	printf "%20s : select %s\n" "$choice";
	printf "%20s : exit status \n" "$exit_status";
    done;
}


function set_dev_input() {

    SSSD_status=$1;
    EEELOC_status=$2;
    EEENFS_status=$3;
    CSS_status=$4;
    XAL_status=$5;
    IPY_status=$6;
    LIGHTDM_status=$7;
    OPENBOX_status=$8;
    GNOME_status=$9;
    
}


function print_dev_input() {

    printf "SSSD      status : %d\n" "$SSSD_status";
    printf "EEE local status : %d\n" "$EEELOC_status";
    printf "EEE nfs   status : %d\n" "$EEENFS_status";
    printf "CSS       status : %d\n" "$CSS_status";
    printf "OpenXAL   status : %d\n" "$XAL_status";
    printf "IPhython  status : %d\n" "$IPY_status";
    printf "LightDM   status : %d\n" "$LIGHTDM_status";
    printf "OpenBox   status : %d\n" "$OPENBOX_status";
    printf "Gnome     status : %d\n" "$GNOME_status";

}


function set_ansible_variable() {

    local s_ssd_status="DEVENV_SSSD=";
    local s_eee_status="DEVENV_EEE=";
    local s_css_status="DEVENV_CSS=";
    local s_xal_status="DEVENV_OPENXAL=";
    local s_ipy_status="DEVENV_IPYTHON=";
    # TBD
    local s_gnome_status="";
    local s_lightdm_status="";
    local s_openbox_status="";

    local s_space=" ";


    if [ $SSSD_status = 0 ]; then
	s_ssd_status+="false";
    elif [ $SSSD_status = 1 ]; then
	s_ssd_status+="true";
    else
	printf "Something is not right on %s , and exit\n" "${s_ssd_status}";
     	exit;
    fi

    #    mounted/local/absent
    if   [ $EEELOC_status = 1 ] && [ $EEENFS_status = 0 ]; then
	s_eee_status+="local";
    elif [ $EEELOC_status = 0 ] && [ $EEENFS_status = 1 ]; then
	s_eee_status+="mounted";
    elif [ $EEELOC_status = 0 ] && [ $EEENFS_status = 0 ]; then
	s_eee_status+="absent";
    else
	printf "Something is not right on %s , and exit\n" "${s_eee_status}";
     	exit;
    fi
    
    if [ $CSS_status = 0 ]; then
	s_css_status+="false";
    elif [ $CSS_status = 1 ]; then
	s_css_status+="true";
    else
	printf "Something is not right on %s , and exit\n" "${s_css_status}";
     	exit;
    fi
	
    if [ $XAL_status = 0 ]; then
	s_xal_status+="false";
    elif [ $XAL_status = 1 ]; then
	s_xal_status+="true";
    else
	printf "Something is not right on %s , and exit\n" "${s_xal_status}";
     	exit;
    fi	
    if [ $IPY_status = 0 ]; then
	s_ipy_status+="false";
    elif [ $IPY_status = 1 ]; then
	s_ipy_status+="true";
    else
	printf "Something is not right on %s , and exit\n" "${s_ipy_status}";
     	exit;
    fi
    
    
    ANSIBLE_VARS+=${s_ssd_status};
    ANSIBLE_VARS+=${s_space};
    ANSIBLE_VARS+=${s_eee_status};
    ANSIBLE_VARS+=${s_space};
    ANSIBLE_VARS+=${s_css_status};
    ANSIBLE_VARS+=${s_space};
    ANSIBLE_VARS+=${s_xal_status};
    ANSIBLE_VARS+=${s_space};
    ANSIBLE_VARS+=${s_ipy_status};
    printf "%s\n\n" "${ANSIBLE_VARS}";
    
    print_dev_input
}



function main_menu() {


    # 0) ask the purpose of this installation
    #    *) IOC without UI
    #    *) IOC with light UI (lightdm, openbox)
    #    *) IOC with full  UI (default : Gnome3, gdm)
    #    *) DM  with light UI (ligthdm, openbox)
    #    *) DM  with full  UI (default: gnome3, gdm)
    # 
    # 1) ask the installation optoins:
    #    *) EEE - nfs
    #    *) ESS - local
    #    *) CSS
    #    *) OpenXAL
    #    *) LDAP
    #    *) IPhython
    #
    #  2) check the conflict between 0) and 1)
    #     check HW spec
    #     tell what is recommended
    #
    #  3) transfer this information to ansible input
    #
    #  4) execute extra functions to fulfuil the selection
    
    local IOC_without_UI="IOC without UI";
    local IOC_with_lightUI="IOC with Light UI";
    local IOC_with_CSSlightUI="IOC and CSS with Light UI";
    local IOC_with_defaultUI="IOC with Default UI";
    local DM_with_defaultUI="Default DM with options" ;

    set_dev_input 0 0 0 0 0 0 0 0 0 

    local  main_exitsatus;
    local  main_choices;
    local  dm_choices;
    local  dm_exitstatus;

    
    main_cmd=(whiptail --title "ESS Development Machine Configuration" \
		       --menu  "Please select one of predefined option:" \
		       16 78 5);
    
    main_opt=("${IOC_without_UI}"       "EEE local"
	      "${IOC_with_lightUI}"     "EEE local with lightdm and openbox"
	      "${IOC_with_CSSlightUI}"  "EEE local and CSS with lightdm and openbox"
	      "${IOC_with_defaultUI}"   "EEE local and CSS with gdm and gnome3"
	      "${DM_with_defaultUI}"    "Select further.... ")

    dm_cmd=(whiptail --title "DM Configurations with GNOME3 and GDM" \
 		     --checklist "Select preferred options via [SPACE]  "\
		     20 78 8 );
    
    dm_opt=("SSSD"    "Active Directory integration"   OFF
	    "EEE"     "ESS EPICS Environment"          OFF
	    "CSS"     "Control System Studio"          OFF
	    "XAL"     "High Level Application OpenXAL" OFF
	    "IPhyton" "Ipython Notebook Server"        OFF
	   )

    e3_cmd=(whiptail --title "Possible EEE configuration" \
		     --radiolist "Select the EEE configurations via [SPACE] :"\
		     --nocancel\
		     15 60 4);
    
    e3_opt=("EEEloc"  "Local copied EEE"   ON
	    "EEEnfs"  "NFS mounted  EEE"  OFF);
    
    main_status=0;
    
    while [ "$main_status" -eq 0 ];
    do
	main_choice=$("${main_cmd[@]}" "${main_opt[@]}" 3>&1 1>&2 2>&3 )
	main_exitstatus=$?

 	#	debug_whiptail "main" "$main_choice" "$main_exitstatus";

 	if [ $main_exitstatus = 0 ]; then 
	    
	    case "${main_choice}" in
		
    		"${IOC_without_UI}")
    		    set_dev_input 0 1 0 0 0 0 0 0 0
		    main_status=1;
    		    ;;
    		"${IOC_with_lightUI}")
    		    set_dev_input 0 1 0 0 0 0 1 1 0
		    main_status=1;
    		    ;;
		"${IOC_with_CSSlightUI}")
    		    set_dev_input 0 1 0 1 0 0 1 1 0
		    main_status=1;
    		    ;;
    		"${IOC_with_defaultUI}")
    		    set_dev_input 0 1 0 1 0 0 0 0 1
		    main_status=1;
    		    ;;
    		"${DM_with_defaultUI}")
		    # Set Default UI
    		    set_dev_input 0 0 0 0 0 0 0 0 1
		    dm_status=0;
		    while [ "$dm_status" -eq 0 ]; 
		    do 
			dm_choices=$("${dm_cmd[@]}" "${dm_opt[@]}" 3>&1 1>&2 2>&3 )
			dm_exitstatus=$?
			#		    	debug_whiptail "DM" "${dm_choices}" "${dm_exitstatus}"
			case ${dm_exitstatus} in
			    0)
				for dm_choice in $dm_choices; do # for dm_choice in $dm_choices; do
				    dm_choice=${dm_choice//\"};
				    # 	#			echo $dm_choice;
				    case ${dm_choice} in
					"SSSD")
		    			    SSSD_status=1;
				     	    ;;
		    			"EEE")
					    e3_status=0;
					    while [ "$e3_status" -eq 0 ];
					    do 
		    				# only one selection
		    				e3_sel=$("${e3_cmd[@]}" "${e3_opt[@]}" 3>&1 1>&2 2>&3);
		    				e3_exitstatus=$?
						#debug_whiptail "E3" "${e3_sel}" "${e3_exitstatus}"
						# case ${e3_exitstatus} in
						#     0)
						# 	e3_selection=${e3_sel//\"};
						# 	e3_local="EEEloc";
						# 	e3_nfs="EEEnfs";
						# 	if test "${e3_selection#*$e3_local}" != "$e3_selection" ; then
						# 	    EEELOC_status=1;
						# 	elif test "${e3_selection#*$e3_nfs}" != "$e3_selection" ; then
						# 	    EEENFS_status=1;
						# 	else
						# 	    printf "Not acceptable, exit\n";
						# 	    exit;
		    		    		# 	fi
						# 	e3_status=1;
						# 	;;
						    
						#     *)
						# 	e3_status=0;
						# 	;; 
						# esac
						
						case ${e3_exitstatus} in
						    0)
							case ${e3_sel//\"} in
		    		    			    "EEEloc")
		    		    		     		EEELOC_status=1;
		    		    				;;
		    		    			    "EEEnfs")
		    		    				EEENFS_status=1;
		    		    				;;
		    					esac
							e3_status=1;
							;;
						    *)
							e3_status=0;
							;;
						esac
					    done;
					    ;;
					
					"CSS")
					    CSS_status=1;	
					    ;;
					
					"XAL")
					    XAL_status=1;
					    ;;
					
					"IPhyton")
					    IPY_status=1;
					    ;;
				    esac # ${dm_choice} in
    
				done # for dm_choice in $dm_choices; do
				
				dm_status=1
				main_status=1
				;;
			    *)
				dm_status=1;
				main_status=0;
				;;
			esac # 	case ${dm_exitstatus} in
		    done     # while [ "$dm_status" -eq 0 ]; 
		    ;;
	    esac #  case "${main_choice}" in

	else  # if [ $main_exitstatus = 0 ]; then
	    whiptail --title "ESS Development Machine Configuration" \
 		     --yesno  "You hit the escape button or select the cancel button, so do you want to terminate the entire dm_setup procedure?" \
		     --defaultno \
		     8 78;
 	    lastmsg_exitstatus=$?;
 	    if [ $lastmsg_exitstatus = 0 ]; then
		main_status=1;
	    else
		main_status=0;
	    fi

	fi # [ $main_exitstatus = 0 ]; then
	#	debug_whiptail "ESCAPE" 0  "${lastmsg_exitstatus}"
	
    done
    
    
    set_ansible_variable
    
    # it is better to ask an user again "is this OK?"
    # will look for a method later...
}
 

function ess_dm_ansible(){
    
    local func_name=${FUNCNAME[*]}; ini_func ${func_name};

    local git_src_url="https://bitbucket.org/europeanspallationsource";
    local git_src_name="ics-ans-devenv";
    local git_src_dir=${SC_TOP}/${git_src_name};

    git_clone  "${git_src_dir}" "${git_src_url}" "${git_src_name}";

    pushd $git_src_dir;

    git_selection 

    if [ $EEELOC_status = 1 ] && [ $EEENFS_status = 0 ]; then
	update_eeelocal_parameters
    fi

    is-active-ui

    ${SUDO_CMD} ansible-playbook -i "localhost," -c local devenv.yml --extra-vars="${ANSIBLE_VARS}"

    popd

    #
    if [ $CSS_status = 1 ]; then
	update_css_configuration
    fi
    
    end_func ${func_name}

}

function carchivetools_setup() {

    local func_name=${FUNCNAME[*]}; ini_func ${func_name};

    local git_src_url="https://github.com/epicsdeb/";
    local git_src_name="carchivetools";
    local git_src_dir=${SC_TOP}/${git_src_name};
    local tag_name="debian/2.2";
    
    git_clone  "${git_src_dir}" "${git_src_url}" "${git_src_name}" "${tag_name}" ;

    pushd $git_src_dir;

    popd
    end_func ${func_name}
    
}


main_menu

# #print_dev_input

# Ask the password in order to do many sudo job, and extended
# the sudo timeout for another N mins (5 CentOS 7.1, 15 Debian 8)
# 
# -v : extend the timeout
# -S : stdin
# 
${SUDO_CMD} -v -S <<< $(whiptail --title "SUDO Password Box" --passwordbox "Enter your password and choose Ok to continue." 10 60 3>&1 1>&2 2>&3);

sudo_start;

preparation


ess_dm_ansible

packages

carchivetools_setup

yum_extra
#

if [[ ${GUI_STATUS} = "inactive" ]]; then
    printf "\n>>>>>>>> NO USER INTERFACE  <<<<<<<< \n"
    if [ $EEELOC_status = 1 ] && [ $EEENFS_status = 0 ]; then
	printf "* One should wait for rsync EPICS processe \n  in order to check the ESS EPICS Environment.\n  tail -n 10 -f ${RSYNC_EPICS_LOG}\n\n";
    fi
    
    printf "* One can check the ansible log ${ANSIBLE_LOG}\n  whether the ansible returns OK or not. \n  tail -f ${ANSIBLE_LOG}\n\n";
fi

# Remove some directories in ${HOME}
printf "Remove Music, Pictures, Public, Templates, and Videos directories in ${HOME}.... \n";
rm -rf ${HOME}/{Music,Pictures,Public,Templates,Videos};

exit

