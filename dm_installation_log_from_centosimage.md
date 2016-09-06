The current DM release version can be checked at https://ess-ics.atlassian.net/wiki/pages/viewpage.action?pageId=50299442


https://ess-ics.atlassian.net/wiki/display/DE/ESS+physical+DM+setup


```
[iocuser@ip6-39 ~]$ su
Password: 
[root@ip6-39 iocuser]# visudo

## Allow root to run any commands anywhere

root    ALL=(ALL)       ALL     
iocuser ALL=(ALL)       ALL

[root@ip6-39 iocuser]# rm -rf /etc/yum.repos.d/*
[root@ip6-39 iocuser]# curl -o /etc/yum.repos.d/CentOS-Base.repo https://artifactory01.esss.lu.se/artifactory/list/devenv/repositories/repofiles/CentOS-Vault-7.1.1503.repo
  % Total    % Received % Xferd  Average Speed   Time    Time     Time  Current
                                 Dload  Upload   Total   Spent    Left  Speed
100   952  100   952    0     0   3886      0 --:--:-- --:--:-- --:--:--  3901
[root@ip6-39 iocuser]# curl -o /etc/yum.repos.d/epel-19012016.repo https://artifactory01.esss.lu.se/artifactory/list/devenv/repositories/repofiles/epel-19012016.repo
  % Total    % Received % Xferd  Average Speed   Time    Time     Time  Current
                                 Dload  Upload   Total   Spent    Left  Speed
100   526  100   526    0     0   2482      0 --:--:-- --:--:-- --:--:--  2492
[root@ip6-39 iocuser]# curl -o /etc/pki/rpm-gpg/RPM-GPG-KEY-EPEL-7 https://artifactory01.esss.lu.se/artifactory/list/devenv/repositories/repofiles/RPM-GPG-KEY-EPEL-7
  % Total    % Received % Xferd  Average Speed   Time    Time     Time  Current
                                 Dload  Upload   Total   Spent    Left  Speed
100  1662  100  1662    0     0   7773      0 --:--:-- --:--:-- --:--:--  7766
[root@ip6-39 iocuser]# 

[root@ip6-39 iocuser]# yum install git ansible

Complete!
```

# IOC user 

```
[iocuser@ip6-39 ansible]$ git clone --branch 2.2.4 https://bitbucket.org/europeanspallationsource/ics-ans-devenv.git
Cloning into 'ics-ans-devenv'...
remote: Counting objects: 1208, done.
remote: Compressing objects: 100% (512/512), done.
remote: Total 1208 (delta 539), reused 1156 (delta 506)
Receiving objects: 100% (1208/1208), 36.62 MiB | 8.85 MiB/s, done.
Resolving deltas: 100% (539/539), done.
Note: checking out 'aaef669770493677002585a3e77a5c857640e8d6'.

You are in 'detached HEAD' state. You can look around, make experimental
changes and commit them, and you can discard any commits you make in this
state without impacting any branches by performing another checkout.

If you want to create a new branch to retain commits you create, you may
do so (now or later) by using -b with the checkout command again. Example:

  git checkout -b new_branch_name


[iocuser@ip6-39 ansible]$ 
[iocuser@ip6-39 ansible]$  cd ics-ans-devenv

```

It is not easy to remember what the most recent release of EM is, so I prefer to run the commands as follows:

```
[iocuser@ip6-39 ~]$ git clone https://bitbucket.org/europeanspallationsource/ics-ans-devenv.git
[iocuser@ip6-39 ~]$ cd ics-ans-devenv/
[iocuser@ip6-39 ics-ans-devenv]$ git tag -l
0.0.10
0.0.11
0.0.12
0.0.2
0.0.3
0.0.4
0.0.5
0.0.6
0.0.7
0.0.8
0.0.9
1.0.0
1.0.1
1.0.1-rc1
2.0.0
2.0.0-rc1
2.0.0-rc1_1
2.0.0-rc2
2.0.0-rc3
2.0.0-rc4
2.0.0-rc5
2.0.0-rc6
2.0.0-rc7
2.0.0-rc8
2.0.1
2.0.2
2.0.3-rc01
2.0.3-rc02
2.0.3-rc03
2.0.3-rc04
2.1.0
2.1.1
2.1.2
2.2.0
2.2.1
2.2.2
2.2.3
2.2.4
rc-1
[iocuser@ip6-39 ics-ans-devenv]$ git checkout tags/2.2.4
Note: checking out 'tags/2.2.4'.

You are in 'detached HEAD' state. You can look around, make experimental
changes and commit them, and you can discard any commits you make in this
state without impacting any branches by performing another checkout.

If you want to create a new branch to retain commits you create, you may
do so (now or later) by using -b with the checkout command again. Example:

  git checkout -b new_branch_name

HEAD is now at aaef669... CSS variable handling changed to work in Docker as well


```



```
[iocuser@ip6-39 ics-ans-devenv]$ 
[iocuser@ip6-39 ics-ans-devenv]$ sudo ansible-playbook -i "localhost," -c local devenv.yml --extra-vars "DEVENV_SSSD=true DEVENV_EEE=local DEVENV_CSS=true DEVENV_OPENXAL=false DEVENV_IPYTHON=false"

TASK: [system-info | Replace the placeholders in the system-info script] ****** 
changed: [localhost] => (item={'regexp': '<DEVENV_VERSION>', 'replace': u'2.2.4'})
changed: [localhost] => (item={'regexp': '<DEVENV_SSSD>', 'replace': u'true'})
changed: [localhost] => (item={'regexp': '<DEVENV_EEE>', 'replace': u'local'})
changed: [localhost] => (item={'regexp': '<NFS_SERVER>', 'replace': u'ics-boot-01.esss.lu.se'})
changed: [localhost] => (item={'regexp': '<DEVENV_CSS>', 'replace': u'true'})
changed: [localhost] => (item={'regexp': '<DEVENV_OPENXAL>', 'replace': u'false'})
changed: [localhost] => (item={'regexp': '<DEVENV_IPYTHON>', 'replace': u'false'})

TASK: [system-info | Replace the placeholders in the system-info script] ****** 
changed: [localhost] => (item={'regexp': '<INFO_DIR>', 'replace': u'/etc/ansible/history'})
changed: [localhost] => (item={'regexp': '<INFO_FILE_PATH>', 'replace': u'/etc/ansible/history/devenv-info.txt'})

TASK: [system-info | Run the script] ****************************************** 
failed: [localhost] => {"changed": true, "cmd": ". /root/.bashrc && source /etc/ansible/history/devenv-system-info.sh", "delta": "0:00:00.004143", "end": "2016-09-05 16:34:25.050088", "rc": 1, "start": "2016-09-05 16:34:25.045945", "warnings": []}
stderr: /etc/profile.d/ess_epics_env.sh: line 26: /opt/epics/modules/environment/1.8.1/3.14.12.5/bin/centos7-x86_64/requireExecCompletions: No such file or directory

FATAL: all hosts have already failed -- aborting

PLAY RECAP ******************************************************************** 
           to retry, use: --limit @/root/devenv.retry

localhost                  : ok=84   changed=53   unreachable=0    failed=1   


```

The same error, which was reported, is, but isn't fixed yet. Anyway, run it again with the same commands.


```
[iocuser@ip6-39 ics-ans-devenv]$ sudo ansible-playbook -i "localhost," -c local devenv.yml --extra-vars "DEVENV_SSSD=true DEVENV_EEE=local DEVENV_CSS=true DEVENV_OPENXAL=false DEVENV_IPYTHON=false"

changed: [localhost] => (item={'regexp': '<DEVENV_IPYTHON>', 'replace': u'false'})

TASK: [system-info | Replace the placeholders in the system-info script] ****** 
changed: [localhost] => (item={'regexp': '<INFO_DIR>', 'replace': u'/etc/ansible/history'})
changed: [localhost] => (item={'regexp': '<INFO_FILE_PATH>', 'replace': u'/etc/ansible/history/devenv-info.txt'})

TASK: [system-info | Run the script] ****************************************** 
changed: [localhost]

TASK: [system-info | Replace placeholders in the system-info script] ********** 
changed: [localhost]

PLAY RECAP ******************************************************************** 
localhost                  : ok=83   changed=29   unreachable=0    failed=0   


```



Open another terminal, to run "iocsh"

```
iocuser@ip6-39 ~]$ iocsh 
/opt/epics/bases/base-3.14.12.5/bin/centos7-x86_64/softIoc -D /opt/epics/bases/base-3.14.12.5/dbd/softIoc.dbd /tmp/iocsh.startup.11453
#date="Mon Sep  5 16:40:04 CEST 2016"
#user="iocuser"
#PWD="/home/iocuser"
#EPICSVERSION="3.14.12.5"
#EPICS_HOST_ARCH="centos7-x86_64"
#SHELLBOX=""
#EPICS_CA_ADDR_LIST=""
#EPICS_MODULE_INCLUDE_PATH=".:/usr/lib64:/usr/lib:/lib64:/lib"
dlload         /opt/epics/modules/environment/1.8.1/3.14.12.5/lib/centos7-x86_64/libenvironment.so
dbLoadDatabase /opt/epics/modules/environment/1.8.1/3.14.12.5/dbd/environment.dbd
environment_registerRecordDeviceDriver
iocInit
Starting iocInit
############################################################################
## EPICS R3.14.12.5-2015-08 $Date: Tue 2015-03-24 09:57:35 -0500$
## EPICS Base built Oct  9 2015
############################################################################
iocRun: All initialization complete
epicsEnvSet IOCSH_PS1,"ip6-39> "
```



update CENTOS

yum update


