# CentOS 7.1 1503 Installation Procedure

![Connection Example](0.png)

![Connection Example](1.png)

![Connection Example](2.png)

![Connection Example](3.png)

![Connection Example](4.png)

![Connection Example](5.png)

![Connection Example](6.png)

![Connection Example](7.png)

![Connection Example](8.png)

![Connection Example](9.png)

![Connection Example](10.png)

# Development Machine Setup Procedure
* Version : 2.2.4
* Selected Option (TRUE) : EEE Local installation / CS-Studio 
* Unselected Option (FALSE) : ESS Active Directory service / OpenXAL / IPython 

## Download the script 
```
curl -L https://git.io/vi8DA -o dm_setup.bash
```
![Connection Example](11.png)


## Run the script
```
bash em_setup.script
```
![Connection Example](12.png)

## sudo permission
* Type the user password here.

![Connection Example](13.png)

## Installation is started
![Connection Example](14.png)

## Select the release version 
* Please see the following site for more information.
https://ess-ics.atlassian.net/wiki/x/MoL-Ag

![Connection Example](15.png)

![Connection Example](16.png)

## Run the SoftIOC via iocsh
* Open another terminal
* type iocsh
```
iocsh
```
![Connection Example](17.png)

## Run CS-Studio 
```
css
```

![Connection Example](18.png)

![Connection Example](19.png)


## Error 
* the following error was solved from 2.2.5
A race condition error solved for local EEE machines, where requireExecCompletions is referenced in playbooks before it has been synced.

![Connection Example](20.png)
