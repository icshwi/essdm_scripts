#!/bin/bash
#
#  Copyright (c) 2016 Jeong Han Lee
#
#  The script is free software: you can redistribute
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
# email  : jeonghan.lee@gmail.com
# Date   : 
# version : 0.0.2
#
# 
#
declare -gr SC_SCRIPT="$(realpath "$0")"
declare -gr SC_SCRIPTNAME="$(basename "$SC_SCRIPT")"
declare -gr SC_TOP="$(dirname "$SC_SCRIPT")"


set -a
. ${SC_TOP}/env.conf
set +a

. ${SC_TOP}/functions

# https://the.earth.li/~sgtatham/putty/latest/putty-0.67.tar.gz
# CentOS 7.1 1503
# Required packages 
# yum install cpan gtk2-devel 


function putty_setup_build () {

    local func_name=${FUNCNAME[*]}; __ini_func ${func_name};
    local git_src_url=${PUTTY_GIT_URL};
    local git_src_name=${PUTTY_GIT_NAME};
    local git_src_dir=${SC_TOP}/${git_src_name};
    local git_src_tag=${PUTTY_GIT_TAG};
    
    printf "\n>>>"
    printf "\n>>> Now, we are going to clone and build the putty\n"
    git_clone  "${git_src_dir}" "${git_src_url}" "${git_src_name}" "${git_src_tag}";
    
    pushd ${git_src_dir};
    perl mkfiles.pl
    sh mkauto.sh
    # ./configure & make doesn't work, because of the following message:
    # *** No rule to make target 'doc/plink.1', needed by 'all-am'.  Stop.
    # So disable configure, and go unix directory directly
    # ./configure
    popd

    pushd ${git_src_dir}/unix;
    make -f Makefile.gtk
    #
    # mv only putty binary to /usr/local/bin directory manually.
    # and overwrite an existing file

    printf "\n>>>"
    printf "\n>>> Now, we are moving the putty to /usr/local/bin manually\n"
    ${SUDO_CMD} mv --force putty /usr/local/bin/ 
    popd

    __end_func ${func_name};
}


function MCH_management_network_setup() {

    local func_name=${FUNCNAME[*]}; __ini_func ${func_name};


    # This method is not permant, rebooting changes, so
    # should check the setup via nmcli with the real MTCA HW
    #
    ${SUDO_CMD} ifconfig ${MTCA_NET_DEV} ${MTCA_MANAGE_IP} netmask ${MTCA_MANAGE_NM} 
    ${SUDO_CMD} route add default gw ${MTCA_MANAGE_GW}
    ${SUDO_CMD} ifconfig ${MTCA_NET_DEV} up;

    __end_func ${func_name};
}

${SUDO_CMD} -v

putty_setup_build

#MCH_management_network_setup


exit
