# essdm_scripts
ESS Physical Development Machine (DM) Setup Script

# Goal
* This script should be used for the ESS Physical DM setup for CentOS 7.1 1503.
* This script should provide an easy solution to setup the DM quickly
* This script should focus *ONLY* two options (EEE Local installation and CS-Studio installation) 
* This script should provide an additional installation of several packages

# Requirements
* an user should have the sudo permission
* Fresh installation of CentOS 7.1 1503 (Server with UI or Gnome Desktop). It is highly recommended to run the script without doing "yum" activities. The script will swipe original CentOS repositories completely, and put the ESS customized repositories instead. 
* curl - already installed in the CentOS

## Download the script

* Short, but it has no meaning
```
curl -L https://git.io/vi8DA -o dm_setup.bash
```
* Long, but it is self-evidence
```
curl -L https://raw.githubusercontent.com/jeonghanlee/essdm_scripts/master/dm_setup.bash -o dm_setup.bash
```

# Execute the script

```
bash dm_setup.bash 
```
# Reference 
https://ess-ics.atlassian.net/wiki/display/DE/ESS+physical+DM+setup

# Installation Example
Please see the [README.md in centos7_installation directory](./centos7_installation/README.md).
