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
# version : 0.1.0 
#

declare -g SSSD_status;
declare -g EEELOC_status;
declare -g EEENFS_status;
declare -g CSS_status;
declare -g XAL_status;
declare -g PHY_status;
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
    PHY_status=$6;
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
    printf "IPhython  status : %d\n" "$PHY_status";
    printf "LightDM   status : %d\n" "$LIGHTDM_status";
    printf "OpenBox   status : %d\n" "$OPENBOX_status";
    printf "Gnome     status : %d\n" "$GNOME_status";

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
		       --nocancel\
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
    do {
	
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
		    do {
			dm_choices=$("${dm_cmd[@]}" "${dm_opt[@]}" 3>&1 1>&2 2>&3 )
			dm_exitstatus=$?
			#		    	debug_whiptail "DM" "${dm_choices}" "${dm_exitstatus}"
			case ${dm_exitstatus} in
			    0)

				for dm_choice in $dm_choices; do {
				    dm_choice=${dm_choice//\"};
				    # 	#			echo $dm_choice;
				    case ${dm_choice} in
					"SSSD")
		    			    SSSD_status=1;
				     	    ;;
		    			"EEE")
					    e3_status=0;
					    while [ "$e3_status" -eq 0 ];
					    do {
		    				# only one selection
		    				e3_sel=$("${e3_cmd[@]}" "${e3_opt[@]}" 3>&1 1>&2 2>&3);
		    				e3_exitstatus=$?
#		    				debug_whiptail "E3" "${e3_sel}" "${e3_exitstatus}"

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
							#
							# don't accept "ESC", and others
							#
							e3_status=0;
							;;
						esac
					    }
					    done;
		    			    ;;
		    			"CSS")
		    			    CSS_status=1;	
		    			    ;;
		    			"XAL")
		    			    XAL_status=1;
		    			    ;;
		    			"IPhyton")
		    			    PHY_status=1;
		    			    ;;
		    		    esac
				};
			    	done

				dm_status=1
				main_status=1
				;;
			    *)
				dm_status=1;
				main_status=0;
			    ;;
			esac
		    }
		    done
		    ;;
	    esac
	else
	    whiptail --title "ESS Development Machine Configuration" \
		     --yesno  "You hit the escape button or something else, so terminate the entire dm_setup procedure?" \
		     --defaultno \
		     8 78;
	    lastmsg_exitstatus=$?;
	    if [ $lastmsg_exitstatus = 0 ]; then
		main_status=1;
	    else
		main_status=0;
	    fi
	    #	debug_whiptail "ESCAPE" 0  "${lastmsg_exitstatus}"
	fi

    };
    done
    

}


main_menu


print_dev_input

exit

