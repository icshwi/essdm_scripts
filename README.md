# essdm_scripts
ESS Physical Development Machine (DM) Setup Script

# Goal
* This script should be used for the ESS Physical DM setup for CentOS 7.1 1503.
* This script should provide an easy solution to setup the DM quickly
* This script should focus *ONLY* two options (EEE Local installation and CS-Studio installation) 
* This script should provide an additional installation of several packages

# Requirements
## CentOS Installation
* Set Installation Source as *Local media* and Software Selection as *Minimal installation* 
* Create iocuser and set the administrator permission
* *Do not "yum" before executing the dm_setup script*. DM should use the ESS rpm repositories, not any other CentOS ones. The dm_script will remove original CentOS repositories completely, and put the ESS customized repositories.  


# DM Setup

## Login the CentOS as iocuser

## Open an Terminal

## Download the script

* Short, but it has no meaning
```
curl -L https://goo.gl/ZFCFf1 -o dm_setup.bash
```
* Long, but it is self-evidence
```
curl -L https://raw.githubusercontent.com/jeonghanlee/essdm_scripts/master/dm_setup.bash -o dm_setup.bash
```

## Execute the script

```
bash dm_setup.bash 
```

# Reference 
https://ess-ics.atlassian.net/wiki/display/DE/ESS+physical+DM+setup

# Installation Example
Please see the [README.md in centos7_installation directory](./centos7_installation/README.md).
