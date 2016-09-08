# The full log for the reference

```
[iocuser@localhost ~]$ curl -L https://raw.githubusercontent.com/jeonghanlee/essdm_scripts/master/dm_setup.bash -o dm_setup.bash
  % Total    % Received % Xferd  Average Speed   Time    Time     Time  Current
                                 Dload  Upload   Total   Spent    Left  Speed
100  5319  100  5319    0     0    978      0  0:00:05  0:00:05 --:--:--  1275
[iocuser@localhost ~]$ chmod a+rx dm_setup.bash 
[iocuser@localhost ~]$ bash dm_setup.bash 
[sudo] password for iocuser: 
BDB2053 Freeing read locks for locker 0x30ab: 13973/139985222080320
BDB2053 Freeing read locks for locker 0x30ad: 13973/139985222080320
Loaded plugins: fastestmirror, langpacks
Resolving Dependencies
--> Running transaction check
---> Package PackageKit.x86_64 0:0.8.9-11.el7.centos will be erased
--> Processing Dependency: PackageKit >= 0.5.0 for package: gnome-packagekit-3.8.2-10.el7.x86_64
--> Processing Dependency: PackageKit(x86-64) = 0.8.9-11.el7.centos for package: PackageKit-yum-0.8.9-11.el7.centos.x86_64
--> Running transaction check
---> Package PackageKit-yum.x86_64 0:0.8.9-11.el7.centos will be erased
---> Package gnome-packagekit.x86_64 0:3.8.2-10.el7 will be erased
--> Finished Dependency Resolution

Dependencies Resolved
====================================================================================================
 Package                   Arch            Version                         Repository          Size
====================================================================================================
Removing:
 PackageKit                x86_64          0.8.9-11.el7.centos             @anaconda          2.9 M
Removing for dependencies:
 PackageKit-yum            x86_64          0.8.9-11.el7.centos             @anaconda          306 k
 gnome-packagekit          x86_64          3.8.2-10.el7                    @anaconda           12 M

Transaction Summary
====================================================================================================
Remove  1 Package (+2 Dependent packages)

Installed size: 15 M
Downloading packages:
Running transaction check
Running transaction test
Transaction test succeeded
Running transaction
  Erasing    : gnome-packagekit-3.8.2-10.el7.x86_64                                             1/3 
  Erasing    : PackageKit-0.8.9-11.el7.centos.x86_64                                                                                        2/3 
  Erasing    : PackageKit-yum-0.8.9-11.el7.centos.x86_64                                                                                    3/3 
  Verifying  : PackageKit-yum-0.8.9-11.el7.centos.x86_64                                                                                    1/3 
  Verifying  : gnome-packagekit-3.8.2-10.el7.x86_64                                                                                         2/3 
  Verifying  : PackageKit-0.8.9-11.el7.centos.x86_64                                                                                        3/3 

Removed:
  PackageKit.x86_64 0:0.8.9-11.el7.centos                                                                                                       

Dependency Removed:
  PackageKit-yum.x86_64 0:0.8.9-11.el7.centos                               gnome-packagekit.x86_64 0:3.8.2-10.el7                              

Complete!
  % Total    % Received % Xferd  Average Speed   Time    Time     Time  Current
                                 Dload  Upload   Total   Spent    Left  Speed
100   952  100   952    0     0    178      0  0:00:05  0:00:05 --:--:--   201
100   526  100   526    0     0   170k      0 --:--:-- --:--:-- --:--:--  170k
100  1662  100  1662    0     0   527k      0 --:--:-- --:--:-- --:--:--  527k
Loaded plugins: fastestmirror, langpacks
C7.1.1503-base                                                                                                           | 3.6 kB  00:00:00     
C7.1.1503-centosplus                                                                                                     | 3.4 kB  00:00:00     
C7.1.1503-extras                                                                                                         | 3.4 kB  00:00:00     
C7.1.1503-fasttrack                                                                                                      | 3.4 kB  00:00:00     
C7.1.1503-updates                                                                                                        | 3.4 kB  00:00:00     
epel-19012016                                                                                                            | 4.3 kB  00:00:00     
(1/9): C7.1.1503-base/x86_64/group_gz                                                                                    | 154 kB  00:00:05     
(2/9): C7.1.1503-fasttrack/x86_64/primary_db                                                                             |  71 kB  00:00:05     
(3/9): C7.1.1503-extras/x86_64/primary_db                                                                                | 120 kB  00:00:05     
(4/9): C7.1.1503-centosplus/x86_64/primary_db                                                                            | 2.2 MB  00:00:05     
(5/9): C7.1.1503-base/x86_64/primary_db                                                                                  | 5.1 MB  00:00:06     
(6/9): C7.1.1503-updates/x86_64/primary_db                                                                               | 4.7 MB  00:00:01     

(7/9): epel-19012016/group_gz                                                                                            | 169 kB  00:00:05     
(8/9): epel-19012016/updateinfo                                                                                          | 467 kB  00:00:05     
(9/9): epel-19012016/primary_db                                                                                          | 3.8 MB  00:00:00     
Loading mirror speeds from cached hostfile
Resolving Dependencies
--> Running transaction check
---> Package ansible.noarch 0:1.9.4-1.el7 will be installed
--> Processing Dependency: sshpass for package: ansible-1.9.4-1.el7.noarch
--> Processing Dependency: python-paramiko for package: ansible-1.9.4-1.el7.noarch
--> Processing Dependency: python-keyczar for package: ansible-1.9.4-1.el7.noarch
--> Processing Dependency: python-jinja2 for package: ansible-1.9.4-1.el7.noarch
--> Processing Dependency: python-httplib2 for package: ansible-1.9.4-1.el7.noarch
--> Processing Dependency: PyYAML for package: ansible-1.9.4-1.el7.noarch
---> Package git.x86_64 0:1.8.3.1-5.el7 will be installed
--> Processing Dependency: perl-Git = 1.8.3.1-5.el7 for package: git-1.8.3.1-5.el7.x86_64
--> Processing Dependency: perl(Term::ReadKey) for package: git-1.8.3.1-5.el7.x86_64
--> Processing Dependency: perl(Git) for package: git-1.8.3.1-5.el7.x86_64
--> Processing Dependency: perl(Error) for package: git-1.8.3.1-5.el7.x86_64
--> Running transaction check
---> Package PyYAML.x86_64 0:3.10-11.el7 will be installed
--> Processing Dependency: libyaml-0.so.2()(64bit) for package: PyYAML-3.10-11.el7.x86_64
---> Package perl-Error.noarch 1:0.17020-2.el7 will be installed
---> Package perl-Git.noarch 0:1.8.3.1-5.el7 will be installed
---> Package perl-TermReadKey.x86_64 0:2.30-20.el7 will be installed
---> Package python-httplib2.noarch 0:0.7.7-3.el7 will be installed
---> Package python-jinja2.noarch 0:2.7.2-2.el7 will be installed
--> Processing Dependency: python-babel >= 0.8 for package: python-jinja2-2.7.2-2.el7.noarch
--> Processing Dependency: python-markupsafe for package: python-jinja2-2.7.2-2.el7.noarch
---> Package python-keyczar.noarch 0:0.71c-2.el7 will be installed
--> Processing Dependency: python-pyasn1 for package: python-keyczar-0.71c-2.el7.noarch
--> Processing Dependency: python-crypto for package: python-keyczar-0.71c-2.el7.noarch
---> Package python-paramiko.noarch 0:1.15.1-1.el7 will be installed
--> Processing Dependency: python-ecdsa for package: python-paramiko-1.15.1-1.el7.noarch
---> Package sshpass.x86_64 0:1.05-5.el7 will be installed
--> Running transaction check
---> Package libyaml.x86_64 0:0.1.4-11.el7_0 will be installed
---> Package python-babel.noarch 0:0.9.6-8.el7 will be installed
---> Package python-ecdsa.noarch 0:0.11-3.el7.centos will be installed
---> Package python-markupsafe.x86_64 0:0.11-10.el7 will be installed
---> Package python-pyasn1.noarch 0:0.1.6-2.el7 will be installed
---> Package python2-crypto.x86_64 0:2.6.1-9.el7 will be installed
--> Processing Dependency: libtomcrypt.so.0()(64bit) for package: python2-crypto-2.6.1-9.el7.x86_64
--> Running transaction check
---> Package libtomcrypt.x86_64 0:1.17-23.el7 will be installed
--> Processing Dependency: libtommath >= 0.42.0 for package: libtomcrypt-1.17-23.el7.x86_64
--> Processing Dependency: libtommath.so.0()(64bit) for package: libtomcrypt-1.17-23.el7.x86_64
--> Running transaction check
---> Package libtommath.x86_64 0:0.42.0-4.el7 will be installed
--> Finished Dependency Resolution

Dependencies Resolved

================================================================================================================================================
 Package                             Arch                     Version                               Repository                             Size
================================================================================================================================================
Installing:
 ansible                             noarch                   1.9.4-1.el7                           epel-19012016                         1.7 M
 git                                 x86_64                   1.8.3.1-5.el7                         C7.1.1503-fasttrack                   4.3 M
Installing for dependencies:
 PyYAML                              x86_64                   3.10-11.el7                           C7.1.1503-base                        153 k
 libtomcrypt                         x86_64                   1.17-23.el7                           epel-19012016                         224 k
 libtommath                          x86_64                   0.42.0-4.el7                          epel-19012016                          35 k
 libyaml                             x86_64                   0.1.4-11.el7_0                        C7.1.1503-base                         55 k
 perl-Error                          noarch                   1:0.17020-2.el7                       C7.1.1503-base                         32 k
 perl-Git                            noarch                   1.8.3.1-5.el7                         C7.1.1503-fasttrack                    53 k
 perl-TermReadKey                    x86_64                   2.30-20.el7                           C7.1.1503-base                         31 k
 python-babel                        noarch                   0.9.6-8.el7                           C7.1.1503-base                        1.4 M
 python-ecdsa                        noarch                   0.11-3.el7.centos                     C7.1.1503-extras                       69 k
 python-httplib2                     noarch                   0.7.7-3.el7                           epel-19012016                          70 k
 python-jinja2                       noarch                   2.7.2-2.el7                           C7.1.1503-base                        515 k
 python-keyczar                      noarch                   0.71c-2.el7                           epel-19012016                         218 k
 python-markupsafe                   x86_64                   0.11-10.el7                           C7.1.1503-base                         25 k
 python-paramiko                     noarch                   1.15.1-1.el7                          epel-19012016                         999 k
 python-pyasn1                       noarch                   0.1.6-2.el7                           C7.1.1503-base                         91 k
 python2-crypto                      x86_64                   2.6.1-9.el7                           epel-19012016                         475 k
 sshpass                             x86_64                   1.05-5.el7                            epel-19012016                          21 k

Transaction Summary
================================================================================================================================================
Install  2 Packages (+17 Dependent packages)

Total download size: 10 M
Installed size: 47 M
Downloading packages:
warning: /var/cache/yum/x86_64/7/C7.1.1503-base/packages/PyYAML-3.10-11.el7.x86_64.rpm: Header V3 RSA/SHA256 Signature, key ID f4a80eb5: NOKEYA 
Public key for PyYAML-3.10-11.el7.x86_64.rpm is not installed
(1/19): PyYAML-3.10-11.el7.x86_64.rpm                                                                                    | 153 kB  00:00:05     
warning: /var/cache/yum/x86_64/7/epel-19012016/packages/libtomcrypt-1.17-23.el7.x86_64.rpm: Header V3 RSA/SHA256 Signature, key ID 352c64e5: NOKEY
Public key for libtomcrypt-1.17-23.el7.x86_64.rpm is not installed
(2/19): libtomcrypt-1.17-23.el7.x86_64.rpm                                                                               | 224 kB  00:00:06     
(3/19): libtommath-0.42.0-4.el7.x86_64.rpm                                                                               |  35 kB  00:00:00     
(4/19): libyaml-0.1.4-11.el7_0.x86_64.rpm                                                                                |  55 kB  00:00:00     
(5/19): ansible-1.9.4-1.el7.noarch.rpm                                                                                   | 1.7 MB  00:00:07     
(6/19): perl-TermReadKey-2.30-20.el7.x86_64.rpm                                                                          |  31 kB  00:00:00     
(7/19): python-babel-0.9.6-8.el7.noarch.rpm                                                                              | 1.4 MB  00:00:00     
(8/19): python-httplib2-0.7.7-3.el7.noarch.rpm                                                                           |  70 kB  00:00:00     
(9/19): python-jinja2-2.7.2-2.el7.noarch.rpm                                                                             | 515 kB  00:00:00     
(10/19): python-keyczar-0.71c-2.el7.noarch.rpm                                                                           | 218 kB  00:00:00     
Public key for git-1.8.3.1-5.el7.x86_64.rpm is not installed
(11/19): git-1.8.3.1-5.el7.x86_64.rpm                                                                                    | 4.3 MB  00:00:08     
(12/19): python-markupsafe-0.11-10.el7.x86_64.rpm                                                                        |  25 kB  00:00:00     
(13/19): python-paramiko-1.15.1-1.el7.noarch.rpm                                                                         | 999 kB  00:00:00     
(14/19): python2-crypto-2.6.1-9.el7.x86_64.rpm                                                                           | 475 kB  00:00:00     
(15/19): sshpass-1.05-5.el7.x86_64.rpm                                                                                   |  21 kB  00:00:00     
(16/19): python-pyasn1-0.1.6-2.el7.noarch.rpm                                                                            |  91 kB  00:00:00     
(17/19): perl-Error-0.17020-2.el7.noarch.rpm                                                                             |  32 kB  00:00:05     
(18/19): perl-Git-1.8.3.1-5.el7.noarch.rpm                                                                               |  53 kB  00:00:05     
Public key for python-ecdsa-0.11-3.el7.centos.noarch.rpm is not installed====================================-] 1.0 MB/s |  10 MB  00:00:00 ETA 
(19/19): python-ecdsa-0.11-3.el7.centos.noarch.rpm                                                                       |  69 kB  00:00:05     
------------------------------------------------------------------------------------------------------------------------------------------------
Total                                                                                                           730 kB/s |  10 MB  00:00:14     
Retrieving key from file:///etc/pki/rpm-gpg/RPM-GPG-KEY-CentOS-7
Importing GPG key 0xF4A80EB5:
 Userid     : "CentOS-7 Key (CentOS 7 Official Signing Key) <security@centos.org>"
 Fingerprint: 6341 ab27 53d7 8a78 a7c2 7bb1 24c6 a8a7 f4a8 0eb5
 Package    : centos-release-7-1.1503.el7.centos.2.8.x86_64 (@anaconda)
 From       : /etc/pki/rpm-gpg/RPM-GPG-KEY-CentOS-7
Retrieving key from file:///etc/pki/rpm-gpg/RPM-GPG-KEY-EPEL-7
Importing GPG key 0x352C64E5:
 Userid     : "Fedora EPEL (7) <epel@fedoraproject.org>"
 Fingerprint: 91e9 7d7c 4a5e 96f1 7f3e 888f 6a2f aea2 352c 64e5
 From       : /etc/pki/rpm-gpg/RPM-GPG-KEY-EPEL-7
Running transaction check
Running transaction test
Transaction test succeeded
Running transaction
  Installing : 1:perl-Error-0.17020-2.el7.noarch                                                                                           1/19 
  Installing : sshpass-1.05-5.el7.x86_64                                                                                                   2/19 
  Installing : python-babel-0.9.6-8.el7.noarch                                                                                             3/19 
  Installing : python-pyasn1-0.1.6-2.el7.noarch                                                                                            4/19 
  Installing : libtommath-0.42.0-4.el7.x86_64                                                                                              5/19 
  Installing : libtomcrypt-1.17-23.el7.x86_64                                                                                              6/19 
  Installing : python2-crypto-2.6.1-9.el7.x86_64                                                                                           7/19 
  Installing : python-keyczar-0.71c-2.el7.noarch                                                                                           8/19 
  Installing : libyaml-0.1.4-11.el7_0.x86_64                                                                                               9/19 
  Installing : PyYAML-3.10-11.el7.x86_64                                                                                                  10/19 
  Installing : python-httplib2-0.7.7-3.el7.noarch                                                                                         11/19 
  Installing : perl-TermReadKey-2.30-20.el7.x86_64                                                                                        12/19 
  Installing : perl-Git-1.8.3.1-5.el7.noarch                                                                                              13/19 
  Installing : git-1.8.3.1-5.el7.x86_64                                                                                                   14/19 
  Installing : python-markupsafe-0.11-10.el7.x86_64                                                                                       15/19 
  Installing : python-jinja2-2.7.2-2.el7.noarch                                                                                           16/19 
  Installing : python-ecdsa-0.11-3.el7.centos.noarch                                                                                      17/19 
  Installing : python-paramiko-1.15.1-1.el7.noarch                                                                                        18/19 
  Installing : ansible-1.9.4-1.el7.noarch                                                                                                 19/19 
  Verifying  : git-1.8.3.1-5.el7.x86_64                                                                                                    1/19 
  Verifying  : python-keyczar-0.71c-2.el7.noarch                                                                                           2/19 
  Verifying  : python-jinja2-2.7.2-2.el7.noarch                                                                                            3/19 
  Verifying  : python-ecdsa-0.11-3.el7.centos.noarch                                                                                       4/19 
  Verifying  : python-markupsafe-0.11-10.el7.x86_64                                                                                        5/19 
  Verifying  : perl-TermReadKey-2.30-20.el7.x86_64                                                                                         6/19 
  Verifying  : python-httplib2-0.7.7-3.el7.noarch                                                                                          7/19 
  Verifying  : 1:perl-Error-0.17020-2.el7.noarch                                                                                           8/19 
  Verifying  : libtomcrypt-1.17-23.el7.x86_64                                                                                              9/19 
  Verifying  : libyaml-0.1.4-11.el7_0.x86_64                                                                                              10/19 
  Verifying  : libtommath-0.42.0-4.el7.x86_64                                                                                             11/19 
  Verifying  : python2-crypto-2.6.1-9.el7.x86_64                                                                                          12/19 
  Verifying  : python-pyasn1-0.1.6-2.el7.noarch                                                                                           13/19 
  Verifying  : PyYAML-3.10-11.el7.x86_64                                                                                                  14/19 
  Verifying  : ansible-1.9.4-1.el7.noarch                                                                                                 15/19 
  Verifying  : python-babel-0.9.6-8.el7.noarch                                                                                            16/19 
  Verifying  : sshpass-1.05-5.el7.x86_64                                                                                                  17/19 
  Verifying  : perl-Git-1.8.3.1-5.el7.noarch                                                                                              18/19 
  Verifying  : python-paramiko-1.15.1-1.el7.noarch                                                                                        19/19 

Installed:
  ansible.noarch 0:1.9.4-1.el7                                            git.x86_64 0:1.8.3.1-5.el7                                           

Dependency Installed:
  PyYAML.x86_64 0:3.10-11.el7                    libtomcrypt.x86_64 0:1.17-23.el7              libtommath.x86_64 0:0.42.0-4.el7               
  libyaml.x86_64 0:0.1.4-11.el7_0                perl-Error.noarch 1:0.17020-2.el7             perl-Git.noarch 0:1.8.3.1-5.el7                
  perl-TermReadKey.x86_64 0:2.30-20.el7          python-babel.noarch 0:0.9.6-8.el7             python-ecdsa.noarch 0:0.11-3.el7.centos        
  python-httplib2.noarch 0:0.7.7-3.el7           python-jinja2.noarch 0:2.7.2-2.el7            python-keyczar.noarch 0:0.71c-2.el7            
  python-markupsafe.x86_64 0:0.11-10.el7         python-paramiko.noarch 0:1.15.1-1.el7         python-pyasn1.noarch 0:0.1.6-2.el7             
  python2-crypto.x86_64 0:2.6.1-9.el7            sshpass.x86_64 0:1.05-5.el7                  

Complete!
No git source repository in the expected location /home/iocuser/ics-ans-devenv
Cloning into 'ics-ans-devenv'...
remote: Counting objects: 1228, done.
remote: Compressing objects: 100% (526/526), done.
remote: Total 1228 (delta 550), reused 1152 (delta 506)
Receiving objects: 100% (1228/1228), 36.62 MiB | 8.46 MiB/s, done.
Resolving deltas: 100% (550/550), done.
 0: git src                             master
 1: git src                             0.0.10
 2: git src                             0.0.11
 3: git src                             0.0.12
 4: git src                              0.0.2
 5: git src                              0.0.3
 6: git src                              0.0.4
 7: git src                              0.0.5
 8: git src                              0.0.6
 9: git src                              0.0.7
10: git src                              0.0.8
11: git src                              0.0.9
12: git src                               rc-1
13: git src                              1.0.0
14: git src                              1.0.1
15: git src                          1.0.1-rc1
16: git src                              2.0.0
17: git src                          2.0.0-rc1
18: git src                        2.0.0-rc1_1
19: git src                          2.0.0-rc2
20: git src                          2.0.0-rc3
21: git src                          2.0.0-rc4
22: git src                          2.0.0-rc5
23: git src                          2.0.0-rc6
24: git src                          2.0.0-rc7
25: git src                          2.0.0-rc8
26: git src                              2.0.1
27: git src                              2.0.2
28: git src                         2.0.3-rc01
29: git src                         2.0.3-rc02
30: git src                         2.0.3-rc03
31: git src                         2.0.3-rc04
32: git src                              2.1.0
33: git src                              2.1.1
34: git src                              2.1.2
35: git src                              2.2.0
36: git src                              2.2.1
37: git src                              2.2.2
38: git src                              2.2.3
39: git src                              2.2.4
40: git src                              2.2.5
Select master or one of tags which can be built, followed by [ENTER]:39

>>> Selected                              2.2.4 --- 

Note: checking out 'tags/2.2.4'.

You are in 'detached HEAD' state. You can look around, make experimental
changes and commit them, and you can discard any commits you make in this
state without impacting any branches by performing another checkout.

If you want to create a new branch to retain commits you create, you may
do so (now or later) by using -b with the checkout command again. Example:

  git checkout -b new_branch_name

HEAD is now at aaef669... CSS variable handling changed to work in Docker as well

>>> Selected : 2.2.4 --- 
>>> Checkout : 2.2.4 --- 

PLAY [all] ******************************************************************** 

GATHERING FACTS *************************************************************** 
ok: [localhost]

TASK: [Write the devenv version to be installed] ****************************** 
ok: [localhost] => {
    "msg": "Setting up Development Environment version 2.2.4"
}

TASK: [repositories | debug msg="Version is {{ CENTOS_REPO_VERSION  }}"] ****** 
ok: [localhost] => {
    "msg": "Version is 7.1.1503"
}

TASK: [repositories | Remove the epel.repo] *********************************** 
ok: [localhost]

TASK: [repositories | Remove epel-release package] **************************** 
ok: [localhost]

TASK: [repositories | Replace the CentOS-Base.repo with the 7 one] ************ 
changed: [localhost]

TASK: [repositories | Install yum-utils] ************************************** 

TASK: [repositories | Add the CentOS Vault repository with the appropriate version] *** 
changed: [localhost]

TASK: [repositories | debug msg="Centos Vault repository added using version {{ CENTOS_REPO_VERSION }}"] *** 
ok: [localhost] => {
    "msg": "Centos Vault repository added using version 7.1.1503"
}

TASK: [repositories | Disable all CentOS and Epel repositories] *************** 
changed: [localhost] => (item=C7.*)
changed: [localhost] => (item=base)
changed: [localhost] => (item=base-debuginfo)
changed: [localhost] => (item=base-source)
changed: [localhost] => (item=centosplus)
changed: [localhost] => (item=centosplus-source)
changed: [localhost] => (item=cr)
changed: [localhost] => (item=extras)
changed: [localhost] => (item=extras-source)
changed: [localhost] => (item=fasttrack)
changed: [localhost] => (item=updates)
changed: [localhost] => (item=updates-source)
changed: [localhost] => (item=epel*)

TASK: [repositories | Modify epel repository to the chosen version] *********** 
changed: [localhost]

TASK: [repositories | debug msg="Epel repository version {{ EPEL_REPO_VERSION }} added"] *** 
ok: [localhost] => {
    "msg": "Epel repository version 19012016 added"
}

TASK: [repositories | Install epel-release package] *************************** 
skipping: [localhost]

TASK: [repositories | Add the devenv-extras repository] *********************** 
changed: [localhost]

TASK: [repositories | Add the ESS ICS GPG key] ******************************** 
changed: [localhost]

TASK: [repositories | Import the ESS ICS GPG key] ***************************** 
changed: [localhost]

TASK: [repositories | Enable the chosen CentOS and Epel repositories] ********* 
changed: [localhost] => (item=C7.1.1503-base)
changed: [localhost] => (item=C7.1.1503-extras)
changed: [localhost] => (item=C7.1.1503-updates)
changed: [localhost] => (item=devenv-extras)

TASK: [repositories | Enable latest CentOS and Epel repositories] ************* 
skipping: [localhost] => (item=base)
skipping: [localhost] => (item=extras)
skipping: [localhost] => (item=updates)

TASK: [repositories | Enable the chosen Epel repository] ********************** 
changed: [localhost] => (item=epel-19012016)

TASK: [repositories | Enable latest Epel repository] ************************** 
skipping: [localhost] => (item=epel)


TASK: [kernel-lock | yum-versionlock installed] ******************************* 
changed: [localhost]

TASK: [kernel-lock | Kernel packages with right versions installed] *********** 
changed: [localhost] => (item=kernel-3.10.0-229.7.2.el7,kernel-devel-3.10.0-229.7.2.el7,kernel-headers-3.10.0-229.7.2.el7,kernel-tools-3.10.0-229.7.2.el7,kernel-tools-libs-3.10.0-229.7.2.el7)

TASK: [kernel-lock | Kernel packages with right versions installed] *********** 
skipping: [localhost]

TASK: [kernel-lock | Kernel packages pinned to version {{ KERNEL_VERSION }}] *** 
changed: [localhost]

TASK: [kernel-lock | Install some general packages] *************************** 
changed: [localhost] => (item=gedit,ntp,tree,firefox,rsync,picocom,python34,boost-devel,systemd-devel,libxml2-devel,libxml2-python,hdf5-devel,libxml2-devel,libjpeg-turbo-devel,libtiff-devel,libusb-devel,libcurl-devel,avahi,avahi-autoipd,avahi-glib,avahi-libs,avahi-tools,net-snmp,net-snmp-utils,net-snmp-sysvinit)

TASK: [kernel-lock | Make sure iptables is installed] ************************* 
changed: [localhost] => (item=iptables,iptables-services)

TASK: [kernel-lock | Turn off and disable firewalld service] ****************** 
changed: [localhost]

TASK: [kernel-lock | Turn on and enable iptables service] ********************* 
changed: [localhost]

TASK: [kernel-lock | Check if iptables configuration exists] ****************** 
ok: [localhost]

TASK: [kernel-lock | Create the iptables config file if it does not exist yet] *** 
skipping: [localhost]

TASK: [kernel-lock | Remove any lines for the same folder from iptables] ****** 
ok: [localhost] => (item=--sport 5064)
ok: [localhost] => (item=--dport 5065)

TASK: [kernel-lock | Modify iptables] ***************************************** 
changed: [localhost] => (item=-A INPUT -p udp --dport 5065 -j ACCEPT)
changed: [localhost] => (item=-A INPUT -p udp --sport 5064 -j ACCEPT)

TASK: [kernel-lock | Restart iptables] **************************************** 
changed: [localhost]

TASK: [oracleJDK | Check if oracleJDK already installed] ********************** 
changed: [localhost]

TASK: [oracleJDK | Artifactory install oracleJDK] ***************************** 
changed: [localhost]

TASK: [oracleJDK | Set JAVA_HOME env variable] ******************************** 
changed: [localhost] => (item=export JAVA_HOME=/usr/java/jdk1.8.0_40)

TASK: [oracleJDK | set Java version as default] ******************************* 
changed: [localhost] => (item={'path': u'/usr/java/jdk1.8.0_40/jre/bin', 'exe': 'java'})
changed: [localhost] => (item={'path': u'/usr/java/jdk1.8.0_40/jre/bin', 'exe': 'keytool'})
ok: [localhost] => (item={'path': u'/usr/java/jdk1.8.0_40/bin', 'exe': 'javac'})
changed: [localhost] => (item={'path': u'/usr/java/jdk1.8.0_40/bin', 'exe': 'javadoc'})

TASK: [sssd | installing selinux] ********************************************* 
skipping: [localhost]

TASK: [sssd | installing libselinux-python] *********************************** 
skipping: [localhost]

TASK: [sssd | Disable selinux] ************************************************ 
skipping: [localhost]

TASK: [sssd | Disable selinux permanently] ************************************ 
skipping: [localhost]

TASK: [sssd | Install sssd and authconfig] ************************************ 
skipping: [localhost]

TASK: [sssd | Run authconfig] ************************************************* 
skipping: [localhost]

TASK: [sssd | Ensure a line present in ldap conf file] ************************ 
skipping: [localhost]

TASK: [sssd | Configure sssd.conf] ******************************************** 
skipping: [localhost]

TASK: [sssd | Restart sssd] *************************************************** 
skipping: [localhost]

TASK: [sssd | Add user to sudoers] ******************************************** 
skipping: [localhost]

TASK: [EEEautofs | Install required packages for EPICS usage] ***************** 
skipping: [localhost]

TASK: [EEEautofs | pip install pymodbus] ************************************** 
skipping: [localhost]

TASK: [EEEautofs | Create a script that sets env vars on login] *************** 
skipping: [localhost]

TASK: [EEEautofs | Create sym link in /opt/ pointing to mountpoints] ********** 
skipping: [localhost] => (item=epics)
skipping: [localhost] => (item=eldk-5.6)
skipping: [localhost] => (item=startup)

TASK: [EEEautofs | Remove any lines for the same folder from auto.nfs] ******** 
skipping: [localhost] => (item=epics)
skipping: [localhost] => (item=eldk-5.6)
skipping: [localhost] => (item=startup)

TASK: [EEEautofs | Modify auto.nfs] ******************************************* 
skipping: [localhost] => (item=epics -fstype=nfs4 ics-boot-01.esss.lu.se:/export/epics)
skipping: [localhost] => (item=eldk-5.6 -fstype=nfs4 ics-boot-01.esss.lu.se:/export/sdk/eldk-5.6)
skipping: [localhost] => (item=startup -fstype=nfs4 ics-boot-01.esss.lu.se:/export/startup)

TASK: [EEEautofs | Modify auto.master] **************************************** 
skipping: [localhost]

TASK: [EEEautofs | Restart autofs] ******************************************** 
skipping: [localhost]

TASK: [EEElocal | Create a script that sets env vars on login] **************** 
changed: [localhost]

TASK: [EEElocal | Install packages needed for syncing and building modules] *** 
changed: [localhost] => (item=rsync,gcc,gcc-c++)

TASK: [EEElocal | Create a user ess] ****************************************** 
changed: [localhost]

TASK: [EEElocal | Remove startup folder sync files] *************************** 
ok: [localhost] => (item=/lib/systemd/system/rsync-startup.service)
ok: [localhost] => (item=/lib/systemd/system/rsync-startup.timer)

TASK: [EEElocal | Remove the startup folder] ********************************** 
ok: [localhost]

TASK: [EEElocal | Create folders to be synced] ******************************** 
changed: [localhost] => (item=/opt/epics)

TASK: [EEElocal | Create a service rsync-modules.service] ********************* 
changed: [localhost]

TASK: [EEElocal | Create a timer rsync-modules.timer] ************************* 
changed: [localhost]

TASK: [EEElocal | Reload systemctl daemons] *********************************** 
changed: [localhost]

TASK: [EEElocal | Start and enable all sync services] ************************* 
changed: [localhost] => (item=rsync-epics.service)

TASK: [EEElocal | Start and enable all sync timers] *************************** 
changed: [localhost] => (item=rsync-epics.timer)

TASK: [cs-studio | Ensure CSS folder exists to avoid non-existing content errors] *** 
changed: [localhost]

TASK: [cs-studio | Ensure version file exists to avoid non-existing content errors] *** 
changed: [localhost]

TASK: [cs-studio | Get version from the version file] ************************* 
changed: [localhost]

TASK: [cs-studio | set_fact CSS_OVERWRITE="false"] **************************** 
skipping: [localhost]

TASK: [cs-studio | debug msg="Installed version is {{ current_version.stdout }}, new version is {{ CSS_VERSION }}"] *** 
ok: [localhost] => {
    "msg": "Installed version is , new version is 4.3.2"
}

TASK: [cs-studio | debug msg="CSS will not be overwritten since the new version matches the installed one."] *** 
skipping: [localhost]

TASK: [cs-studio | debug msg="CSS will be installed/overwritten since it does not exist yet or since the new version upgrades the installed one."] *** 
ok: [localhost] => {
    "msg": "CSS will be installed/overwritten since it does not exist yet or since the new version upgrades the installed one."
}

TASK: [cs-studio | Download packaged cs-studio] ******************************* 
changed: [localhost]

TASK: [cs-studio | Remove the old version of css] ***************************** 
changed: [localhost]

TASK: [cs-studio | Unpackage cs-studio] *************************************** 
changed: [localhost]

TASK: [cs-studio | Remove tarball] ******************************************** 
changed: [localhost]

TASK: [cs-studio | Create symlink in /usr/bin/] ******************************* 
changed: [localhost]

TASK: [repositories | debug msg="Version is {{ CENTOS_REPO_VERSION  }}"] ****** 
skipping: [localhost]

TASK: [repositories | Remove the epel.repo] *********************************** 
skipping: [localhost]

TASK: [repositories | Remove epel-release package] **************************** 
skipping: [localhost]

TASK: [repositories | Replace the CentOS-Base.repo with the 7 one] ************ 
skipping: [localhost]

TASK: [repositories | Install yum-utils] ************************************** 
skipping: [localhost]

TASK: [repositories | Add the CentOS Vault repository with the appropriate version] *** 
skipping: [localhost]

TASK: [repositories | debug msg="Centos Vault repository added using version {{ CENTOS_REPO_VERSION }}"] *** 
skipping: [localhost]

TASK: [repositories | Disable all CentOS and Epel repositories] *************** 
skipping: [localhost] => (item=C7.*)
skipping: [localhost] => (item=base)
skipping: [localhost] => (item=base-debuginfo)
skipping: [localhost] => (item=base-source)
skipping: [localhost] => (item=centosplus)
skipping: [localhost] => (item=centosplus-source)
skipping: [localhost] => (item=cr)
skipping: [localhost] => (item=extras)
skipping: [localhost] => (item=extras-source)
skipping: [localhost] => (item=fasttrack)
skipping: [localhost] => (item=updates)
skipping: [localhost] => (item=updates-source)
skipping: [localhost] => (item=epel*)

TASK: [repositories | Modify epel repository to the chosen version] *********** 
skipping: [localhost]

TASK: [repositories | debug msg="Epel repository version {{ EPEL_REPO_VERSION }} added"] *** 
skipping: [localhost]

TASK: [repositories | Install epel-release package] *************************** 
skipping: [localhost]

TASK: [repositories | Add the devenv-extras repository] *********************** 
skipping: [localhost]

TASK: [repositories | Add the ESS ICS GPG key] ******************************** 
skipping: [localhost]

TASK: [repositories | Import the ESS ICS GPG key] ***************************** 
skipping: [localhost]

TASK: [repositories | Enable the chosen CentOS and Epel repositories] ********* 
skipping: [localhost] => (item=C7.1.1503-base)
skipping: [localhost] => (item=C7.1.1503-extras)
skipping: [localhost] => (item=C7.1.1503-updates)
skipping: [localhost] => (item=devenv-extras)

TASK: [repositories | Enable latest CentOS and Epel repositories] ************* 
skipping: [localhost] => (item=base)
skipping: [localhost] => (item=extras)
skipping: [localhost] => (item=updates)

TASK: [repositories | Enable the chosen Epel repository] ********************** 
skipping: [localhost] => (item=epel-19012016)

TASK: [repositories | Enable latest Epel repository] ************************** 
skipping: [localhost] => (item=epel)

TASK: [openxal-core | Installing prerequisites] ******************************* 
skipping: [localhost]

TASK: [openxal-core | file path=/opt/openxal/openxal-installation state=directory] *** 
skipping: [localhost]

TASK: [openxal-core | Check if openXAL repo already cloned] ******************* 
skipping: [localhost]

TASK: [openxal-core | Downloading OpenXAL from git] *************************** 
skipping: [localhost]

TASK: [openxal-core | Installing OpenXAL] ************************************* 
skipping: [localhost]

TASK: [openxal-core | Installing prerequisites] ******************************* 
skipping: [localhost]

TASK: [openxal-core | file path=/opt/openxal/openxal-installation state=directory] *** 
skipping: [localhost]

TASK: [openxal-core | Check if openXAL repo already cloned] ******************* 
skipping: [localhost]

TASK: [openxal-core | Downloading OpenXAL from git] *************************** 
skipping: [localhost]

TASK: [openxal-core | Installing OpenXAL] ************************************* 
skipping: [localhost]

TASK: [openxal-extras | Install OpenXAL Launcher Desktop file] **************** 
skipping: [localhost] => (item={'script': 'launcher.sh', 'short': 'OpenXAL Launcher', 'desc': 'OpenXAL Launcher Application'})

TASK: [openxal-extras | Install OpenXAL Scan 1D Desktop file] ***************** 
skipping: [localhost] => (item={'script': 'scan1d.sh', 'short': 'OpenXAL Scan 1D', 'desc': 'OpenXAL 1 Dimensional Scan Application'})

TASK: [openxal-extras | Install OpenXAL Scan 2D Desktop file] ***************** 
skipping: [localhost] => (item={'script': 'scan2d.sh', 'short': 'OpenXAL Scan 2D', 'desc': 'OpenXAL 2 Dimensional Scan Application'})

TASK: [openxal-extras | Check if data folder empty] *************************** 
skipping: [localhost]

TASK: [openxal-extras | Initialize Postgresql] ******************************** 
skipping: [localhost]

TASK: [openxal-extras | Copy Postgresql configuration] ************************ 
skipping: [localhost]

TASK: [openxal-extras | Start Postgresql] ************************************* 
skipping: [localhost]

TASK: [openxal-extras | Initialize OpenXAL-GUI DB] **************************** 
skipping: [localhost]

TASK: [openxal-extras | Install maven] **************************************** 
skipping: [localhost]

TASK: [openxal-extras | Configure maven] ************************************** 
skipping: [localhost]

TASK: [oracleJDK | Check if oracleJDK already installed] ********************** 
skipping: [localhost]

TASK: [oracleJDK | Artifactory install oracleJDK] ***************************** 
skipping: [localhost]

TASK: [oracleJDK | Set JAVA_HOME env variable] ******************************** 
skipping: [localhost] => (item=export JAVA_HOME=/usr/java/jdk1.8.0_40)

TASK: [oracleJDK | set Java version as default] ******************************* 
skipping: [localhost] => (item={'path': u'/usr/java/jdk1.8.0_40/jre/bin', 'exe': 'java'})
skipping: [localhost] => (item={'path': u'/usr/java/jdk1.8.0_40/jre/bin', 'exe': 'keytool'})
skipping: [localhost] => (item={'path': u'/usr/java/jdk1.8.0_40/bin', 'exe': 'javac'})
skipping: [localhost] => (item={'path': u'/usr/java/jdk1.8.0_40/bin', 'exe': 'javadoc'})

TASK: [ipython-notebook | installing make] ************************************ 
skipping: [localhost]

TASK: [ipython-notebook | installing python-pillow] *************************** 
skipping: [localhost]

TASK: [ipython-notebook | installing "readline" library] ********************** 
skipping: [localhost]

TASK: [ipython-notebook | installing gcc] ************************************* 
skipping: [localhost]

TASK: [ipython-notebook | installing gcc-c++] ********************************* 
skipping: [localhost]

TASK: [ipython-notebook | installing git] ************************************* 
skipping: [localhost]

TASK: [ipython-notebook | installing pandoc] ********************************** 
skipping: [localhost]

TASK: [ipython-notebook | installing graphviz] ******************************** 
skipping: [localhost]

TASK: [ipython-notebook | installting python] ********************************* 
skipping: [localhost]

TASK: [ipython-notebook | installing python-devel state=present] ************** 
skipping: [localhost]

TASK: [ipython-notebook | installing python-zmq] ****************************** 
skipping: [localhost]

TASK: [ipython-notebook | python-matplotlib] ********************************** 
skipping: [localhost]

TASK: [ipython-notebook | installing python-pymongo] ************************** 
skipping: [localhost]

TASK: [ipython-notebook | installing scipy] *********************************** 
skipping: [localhost]

TASK: [ipython-notebook | installing perl-ExtUtils-CBuilder] ****************** 
skipping: [localhost]

TASK: [ipython-notebook | installing perl-Pod-Checker state=present] ********** 
skipping: [localhost]

TASK: [ipython-notebook | installing pip] ************************************* 
skipping: [localhost]

TASK: [ipython-notebook | upgrading pip] ************************************** 
skipping: [localhost]

TASK: [ipython-notebook | installing invoke] ********************************** 
skipping: [localhost]

TASK: [ipython-notebook | installing lessc] *********************************** 
skipping: [localhost]

TASK: [ipython-notebook | installing ipython] ********************************* 
skipping: [localhost]

TASK: [ipython-notebook | installing bz2file] ********************************* 
skipping: [localhost]

TASK: [ipython-notebook | installing cython] ********************************** 
skipping: [localhost]

TASK: [ipython-notebook | Ensure file jira-0.50-py2.7.egg is absent] ********** 
skipping: [localhost]

TASK: [ipython-notebook | installing jira] ************************************ 
skipping: [localhost]

TASK: [ipython-notebook | installing oauthlib] ******************************** 
skipping: [localhost]

TASK: [ipython-notebook | installing oct2py] ********************************** 
skipping: [localhost]

TASK: [ipython-notebook | installing pandocfilters] *************************** 
skipping: [localhost]

TASK: [ipython-notebook | installing pyepics] ********************************* 
skipping: [localhost]

TASK: [ipython-notebook | installing pygraphviz] ****************************** 
skipping: [localhost]

TASK: [ipython-notebook | installing pypandoc] ******************************** 
skipping: [localhost]

TASK: [ipython-notebook | requests-oauthlib] ********************************** 
skipping: [localhost]

TASK: [ipython-notebook | installing restkit] ********************************* 
skipping: [localhost]

TASK: [ipython-notebook | installing sympy] *********************************** 
skipping: [localhost]

TASK: [ipython-notebook | installing tlslite] ********************************* 
skipping: [localhost]

TASK: [ipython-notebook | installing xlsxwriter] ****************************** 
skipping: [localhost]

TASK: [ipython-notebook | intalling jinja2] *********************************** 
skipping: [localhost]

TASK: [ipython-notebook | installing tornado] ********************************* 
skipping: [localhost]

TASK: [ipython-notebook | installing jsonschema] ****************************** 
skipping: [localhost]

TASK: [ipython-notebook | installing and upgrading jpype] ********************* 
skipping: [localhost]

TASK: [ipython-notebook | Flushing iptables] ********************************** 
skipping: [localhost]

TASK: [ipython-notebook | creating working folder structure for ipython] ****** 
skipping: [localhost]

TASK: [ipython-notebook | Copying example of OpenXAL notebook into working directory] *** 
skipping: [localhost]

TASK: [ipython-notebook | Add ipython daemon to startup scripts dir] ********** 
skipping: [localhost]

TASK: [ipython-notebook | Launch ipythond and configure it to start on boot] *** 
skipping: [localhost]

TASK: [ipython-notebook | Install firefox browser] **************************** 
skipping: [localhost]

TASK: [system-info | Ensure the directory for the info script exists] ********* 
changed: [localhost]

TASK: [system-info | Ensure the directory for the info script exists] ********* 
changed: [localhost]

TASK: [system-info | Copy the devenv-info file onto the machine] ************** 
changed: [localhost]

TASK: [system-info | Copy the system-info script onto the machine] ************ 
changed: [localhost]

TASK: [system-info | Replace the placeholders in the system-info script] ****** 
changed: [localhost] => (item={'regexp': '<DEVENV_VERSION>', 'replace': u'2.2.4'})
changed: [localhost] => (item={'regexp': '<DEVENV_SSSD>', 'replace': u'false'})
changed: [localhost] => (item={'regexp': '<DEVENV_EEE>', 'replace': u'local'})
changed: [localhost] => (item={'regexp': '<NFS_SERVER>', 'replace': u'ics-boot-01.esss.lu.se'})
changed: [localhost] => (item={'regexp': '<DEVENV_CSS>', 'replace': u'true'})
changed: [localhost] => (item={'regexp': '<DEVENV_OPENXAL>', 'replace': u'false'})
changed: [localhost] => (item={'regexp': '<DEVENV_IPYTHON>', 'replace': u'false'})

TASK: [system-info | Replace the placeholders in the system-info script] ****** 
changed: [localhost] => (item={'regexp': '<INFO_DIR>', 'replace': u'/etc/ansible/history'})
changed: [localhost] => (item={'regexp': '<INFO_FILE_PATH>', 'replace': u'/etc/ansible/history/devenv-info.txt'})

TASK: [system-info | Run the script] ****************************************** 
failed: [localhost] => {"changed": true, "cmd": ". /root/.bashrc && source /etc/ansible/history/devenv-system-info.sh", "delta": "0:00:00.148506", "end": "2016-09-08 11:11:51.055371", "rc": 1, "start": "2016-09-08 11:11:50.906865", "warnings": []}
stderr: /etc/profile.d/ess_epics_env.sh: line 26: /opt/epics/modules/environment/1.8.1/3.14.12.5/bin/centos7-x86_64/requireExecCompletions: No such file or directory

FATAL: all hosts have already failed -- aborting

PLAY RECAP ******************************************************************** 
           to retry, use: --limit @/root/devenv.retry

localhost                  : ok=74   changed=46   unreachable=0    failed=1   

[sudo] password for iocuser: 

Loaded plugins: fastestmirror, langpacks, versionlock
Loading mirror speeds from cached hostfile
Package tree-1.6.0-10.el7.x86_64 already installed and latest version
Resolving Dependencies
--> Running transaction check
---> Package emacs.x86_64 1:24.3-11.el7 will be installed
--> Processing Dependency: emacs-common = 1:24.3-11.el7 for package: 1:emacs-24.3-11.el7.x86_64
--> Processing Dependency: libotf.so.0()(64bit) for package: 1:emacs-24.3-11.el7.x86_64
--> Processing Dependency: libMagickWand.so.5()(64bit) for package: 1:emacs-24.3-11.el7.x86_64
--> Processing Dependency: libMagickCore.so.5()(64bit) for package: 1:emacs-24.3-11.el7.x86_64
---> Package screen.x86_64 0:4.1.0-0.19.20120314git3c2946.el7 will be installed
--> Running transaction check
---> Package ImageMagick.x86_64 0:6.7.8.9-10.el7 will be installed
--> Processing Dependency: libwmflite-0.2.so.7()(64bit) for package: ImageMagick-6.7.8.9-10.el7.x86_64
--> Processing Dependency: libImath.so.6()(64bit) for package: ImageMagick-6.7.8.9-10.el7.x86_64
--> Processing Dependency: libIlmThread.so.6()(64bit) for package: ImageMagick-6.7.8.9-10.el7.x86_64
--> Processing Dependency: libIlmImf.so.7()(64bit) for package: ImageMagick-6.7.8.9-10.el7.x86_64
--> Processing Dependency: libIexMath.so.6()(64bit) for package: ImageMagick-6.7.8.9-10.el7.x86_64
--> Processing Dependency: libIex.so.6()(64bit) for package: ImageMagick-6.7.8.9-10.el7.x86_64
--> Processing Dependency: libHalf.so.6()(64bit) for package: ImageMagick-6.7.8.9-10.el7.x86_64
---> Package emacs-common.x86_64 1:24.3-11.el7 will be installed
--> Processing Dependency: liblockfile.so.1()(64bit) for package: 1:emacs-common-24.3-11.el7.x86_64
---> Package libotf.x86_64 0:0.9.13-4.el7 will be installed
--> Processing Dependency: libXaw.so.7()(64bit) for package: libotf-0.9.13-4.el7.x86_64
--> Running transaction check
---> Package OpenEXR-libs.x86_64 0:1.7.1-7.el7 will be installed
---> Package ilmbase.x86_64 0:1.0.3-7.el7 will be installed
---> Package libXaw.x86_64 0:1.0.11-6.1.el7 will be installed
---> Package liblockfile.x86_64 0:1.08-17.el7 will be installed
---> Package libwmf-lite.x86_64 0:0.2.8.4-41.el7_1 will be installed
--> Finished Dependency Resolution

Dependencies Resolved

================================================================================================================================================
 Package                      Arch                   Version                                            Repository                         Size
================================================================================================================================================
Installing:
 emacs                        x86_64                 1:24.3-11.el7                                      C7.1.1503-base                    2.9 M
 screen                       x86_64                 4.1.0-0.19.20120314git3c2946.el7                   C7.1.1503-base                    550 k
Installing for dependencies:
 ImageMagick                  x86_64                 6.7.8.9-10.el7                                     C7.1.1503-base                    2.1 M
 OpenEXR-libs                 x86_64                 1.7.1-7.el7                                        C7.1.1503-base                    217 k
 emacs-common                 x86_64                 1:24.3-11.el7                                      C7.1.1503-base                     20 M
 ilmbase                      x86_64                 1.0.3-7.el7                                        C7.1.1503-base                    100 k
 libXaw                       x86_64                 1.0.11-6.1.el7                                     C7.1.1503-base                    189 k
 liblockfile                  x86_64                 1.08-17.el7                                        C7.1.1503-base                     21 k
 libotf                       x86_64                 0.9.13-4.el7                                       C7.1.1503-base                     92 k
 libwmf-lite                  x86_64                 0.2.8.4-41.el7_1                                   C7.1.1503-updates                  66 k

Transaction Summary
================================================================================================================================================
Install  2 Packages (+8 Dependent packages)

Total download size: 27 M
Installed size: 93 M
Downloading packages:
(1/10): OpenEXR-libs-1.7.1-7.el7.x86_64.rpm                                                                              | 217 kB  00:00:06     
(2/10): emacs-24.3-11.el7.x86_64.rpm                                                                                     | 2.9 MB  00:00:01     
(3/10): ImageMagick-6.7.8.9-10.el7.x86_64.rpm                                                                            | 2.1 MB  00:00:08     
(4/10): ilmbase-1.0.3-7.el7.x86_64.rpm                                                                                   | 100 kB  00:00:00     
(5/10): libXaw-1.0.11-6.1.el7.x86_64.rpm                                                                                 | 189 kB  00:00:00     
(6/10): liblockfile-1.08-17.el7.x86_64.rpm                                                                               |  21 kB  00:00:00     
(7/10): libotf-0.9.13-4.el7.x86_64.rpm                                                                                   |  92 kB  00:00:00     
(8/10): screen-4.1.0-0.19.20120314git3c2946.el7.x86_64.rpm                                                               | 550 kB  00:00:00     
(9/10): emacs-common-24.3-11.el7.x86_64.rpm                                                                              |  20 MB  00:00:04     
(10/10): libwmf-lite-0.2.8.4-41.el7_1.x86_64.rpm                                                                         |  66 kB  00:00:05     
------------------------------------------------------------------------------------------------------------------------------------------------
Total                                                                                                           1.8 MB/s |  27 MB  00:00:15     
Running transaction check
Running transaction test
Transaction test succeeded
Running transaction
  Installing : ilmbase-1.0.3-7.el7.x86_64                                                                                                  1/10 
  Installing : OpenEXR-libs-1.7.1-7.el7.x86_64                                                                                             2/10 
  Installing : libXaw-1.0.11-6.1.el7.x86_64                                                                                                3/10 
  Installing : libotf-0.9.13-4.el7.x86_64                                                                                                  4/10 
  Installing : libwmf-lite-0.2.8.4-41.el7_1.x86_64                                                                                         5/10 
  Installing : ImageMagick-6.7.8.9-10.el7.x86_64                                                                                           6/10 
  Installing : liblockfile-1.08-17.el7.x86_64                                                                                              7/10 
  Installing : 1:emacs-common-24.3-11.el7.x86_64                                                                                           8/10 
  Installing : 1:emacs-24.3-11.el7.x86_64                                                                                                  9/10 
  Installing : screen-4.1.0-0.19.20120314git3c2946.el7.x86_64                                                                             10/10 
  Verifying  : ImageMagick-6.7.8.9-10.el7.x86_64                                                                                           1/10 
  Verifying  : 1:emacs-common-24.3-11.el7.x86_64                                                                                           2/10 
  Verifying  : liblockfile-1.08-17.el7.x86_64                                                                                              3/10 
  Verifying  : OpenEXR-libs-1.7.1-7.el7.x86_64                                                                                             4/10 
  Verifying  : libwmf-lite-0.2.8.4-41.el7_1.x86_64                                                                                         5/10 
  Verifying  : 1:emacs-24.3-11.el7.x86_64                                                                                                  6/10 
  Verifying  : libotf-0.9.13-4.el7.x86_64                                                                                                  7/10 
  Verifying  : ilmbase-1.0.3-7.el7.x86_64                                                                                                  8/10 
  Verifying  : screen-4.1.0-0.19.20120314git3c2946.el7.x86_64                                                                              9/10 
  Verifying  : libXaw-1.0.11-6.1.el7.x86_64                                                                                               10/10 

Installed:
  emacs.x86_64 1:24.3-11.el7                                  screen.x86_64 0:4.1.0-0.19.20120314git3c2946.el7                                 

Dependency Installed:
  ImageMagick.x86_64 0:6.7.8.9-10.el7 OpenEXR-libs.x86_64 0:1.7.1-7.el7 emacs-common.x86_64 1:24.3-11.el7 ilmbase.x86_64 0:1.0.3-7.el7         
  libXaw.x86_64 0:1.0.11-6.1.el7      liblockfile.x86_64 0:1.08-17.el7  libotf.x86_64 0:0.9.13-4.el7      libwmf-lite.x86_64 0:0.2.8.4-41.el7_1

Complete!
Loaded plugins: fastestmirror, langpacks, versionlock
Loading mirror speeds from cached hostfile
Resolving Dependencies
--> Running transaction check
---> Package NetworkManager.x86_64 1:1.0.0-14.git20150121.b4ea599c.el7 will be updated
---> Package NetworkManager.x86_64 1:1.0.0-16.git20150121.b4ea599c.el7_1 will be an update
---> Package NetworkManager-adsl.x86_64 1:1.0.0-14.git20150121.b4ea599c.el7 will be updated
---> Package NetworkManager-adsl.x86_64 1:1.0.0-16.git20150121.b4ea599c.el7_1 will be an update
---> Package NetworkManager-glib.x86_64 1:1.0.0-14.git20150121.b4ea599c.el7 will be updated
---> Package NetworkManager-glib.x86_64 1:1.0.0-16.git20150121.b4ea599c.el7_1 will be an update
---> Package NetworkManager-libnm.x86_64 1:1.0.0-14.git20150121.b4ea599c.el7 will be updated
---> Package NetworkManager-libnm.x86_64 1:1.0.0-16.git20150121.b4ea599c.el7_1 will be an update
---> Package NetworkManager-team.x86_64 1:1.0.0-14.git20150121.b4ea599c.el7 will be updated
---> Package NetworkManager-team.x86_64 1:1.0.0-16.git20150121.b4ea599c.el7_1 will be an update
---> Package NetworkManager-tui.x86_64 1:1.0.0-14.git20150121.b4ea599c.el7 will be updated
---> Package NetworkManager-tui.x86_64 1:1.0.0-16.git20150121.b4ea599c.el7_1 will be an update
---> Package NetworkManager-wifi.x86_64 1:1.0.0-14.git20150121.b4ea599c.el7 will be updated
---> Package NetworkManager-wifi.x86_64 1:1.0.0-16.git20150121.b4ea599c.el7_1 will be an update
---> Package abrt.x86_64 0:2.1.11-19.el7.centos.0.3 will be updated
---> Package abrt.x86_64 0:2.1.11-22.el7.centos.0.1 will be an update
---> Package abrt-addon-ccpp.x86_64 0:2.1.11-19.el7.centos.0.3 will be updated
---> Package abrt-addon-ccpp.x86_64 0:2.1.11-22.el7.centos.0.1 will be an update
---> Package abrt-addon-kerneloops.x86_64 0:2.1.11-19.el7.centos.0.3 will be updated
---> Package abrt-addon-kerneloops.x86_64 0:2.1.11-22.el7.centos.0.1 will be an update
---> Package abrt-addon-pstoreoops.x86_64 0:2.1.11-19.el7.centos.0.3 will be updated
---> Package abrt-addon-pstoreoops.x86_64 0:2.1.11-22.el7.centos.0.1 will be an update
---> Package abrt-addon-python.x86_64 0:2.1.11-19.el7.centos.0.3 will be updated
---> Package abrt-addon-python.x86_64 0:2.1.11-22.el7.centos.0.1 will be an update
---> Package abrt-addon-vmcore.x86_64 0:2.1.11-19.el7.centos.0.3 will be updated
---> Package abrt-addon-vmcore.x86_64 0:2.1.11-22.el7.centos.0.1 will be an update
---> Package abrt-addon-xorg.x86_64 0:2.1.11-19.el7.centos.0.3 will be updated
---> Package abrt-addon-xorg.x86_64 0:2.1.11-22.el7.centos.0.1 will be an update
---> Package abrt-cli.x86_64 0:2.1.11-19.el7.centos.0.3 will be updated
---> Package abrt-cli.x86_64 0:2.1.11-22.el7.centos.0.1 will be an update
---> Package abrt-console-notification.x86_64 0:2.1.11-19.el7.centos.0.3 will be updated
---> Package abrt-console-notification.x86_64 0:2.1.11-22.el7.centos.0.1 will be an update
---> Package abrt-dbus.x86_64 0:2.1.11-19.el7.centos.0.3 will be updated
---> Package abrt-dbus.x86_64 0:2.1.11-22.el7.centos.0.1 will be an update
---> Package abrt-desktop.x86_64 0:2.1.11-19.el7.centos.0.3 will be updated
---> Package abrt-desktop.x86_64 0:2.1.11-22.el7.centos.0.1 will be an update
---> Package abrt-gui.x86_64 0:2.1.11-19.el7.centos.0.3 will be updated
---> Package abrt-gui.x86_64 0:2.1.11-22.el7.centos.0.1 will be an update
---> Package abrt-gui-libs.x86_64 0:2.1.11-19.el7.centos.0.3 will be updated
---> Package abrt-gui-libs.x86_64 0:2.1.11-22.el7.centos.0.1 will be an update
---> Package abrt-libs.x86_64 0:2.1.11-19.el7.centos.0.3 will be updated
---> Package abrt-libs.x86_64 0:2.1.11-22.el7.centos.0.1 will be an update
---> Package abrt-python.x86_64 0:2.1.11-19.el7.centos.0.3 will be updated
---> Package abrt-python.x86_64 0:2.1.11-22.el7.centos.0.1 will be an update
---> Package abrt-retrace-client.x86_64 0:2.1.11-19.el7.centos.0.3 will be updated
---> Package abrt-retrace-client.x86_64 0:2.1.11-22.el7.centos.0.1 will be an update
---> Package abrt-tui.x86_64 0:2.1.11-19.el7.centos.0.3 will be updated
---> Package abrt-tui.x86_64 0:2.1.11-22.el7.centos.0.1 will be an update
---> Package bind-libs.x86_64 32:9.9.4-18.el7 will be updated
---> Package bind-libs.x86_64 32:9.9.4-18.el7_1.5 will be an update
---> Package bind-libs-lite.x86_64 32:9.9.4-18.el7 will be updated
---> Package bind-libs-lite.x86_64 32:9.9.4-18.el7_1.5 will be an update
---> Package bind-license.noarch 32:9.9.4-18.el7 will be updated
---> Package bind-license.noarch 32:9.9.4-18.el7_1.5 will be an update
---> Package bind-utils.x86_64 32:9.9.4-18.el7 will be updated
---> Package bind-utils.x86_64 32:9.9.4-18.el7_1.5 will be an update
---> Package binutils.x86_64 0:2.23.52.0.1-30.el7 will be updated
---> Package binutils.x86_64 0:2.23.52.0.1-30.el7_1.2 will be an update
---> Package ca-certificates.noarch 0:2014.1.98-72.el7 will be updated
---> Package ca-certificates.noarch 0:2015.2.4-70.0.el7_1 will be an update
---> Package centos-logos.noarch 0:70.0.6-1.el7.centos will be updated
---> Package centos-logos.noarch 0:70.0.6-3.el7.centos will be an update
---> Package clutter.x86_64 0:1.14.4-12.el7 will be updated
---> Package clutter.x86_64 0:1.14.4-12.el7_1.1 will be an update
---> Package coreutils.x86_64 0:8.22-11.el7 will be updated
---> Package coreutils.x86_64 0:8.22-12.el7_1.2 will be an update
---> Package crash.x86_64 0:7.0.9-4.el7 will be updated
---> Package crash.x86_64 0:7.0.9-5.el7_1 will be an update
---> Package cups.x86_64 1:1.6.3-17.el7 will be updated
---> Package cups.x86_64 1:1.6.3-17.el7_1.1 will be an update
---> Package cups-client.x86_64 1:1.6.3-17.el7 will be updated
---> Package cups-client.x86_64 1:1.6.3-17.el7_1.1 will be an update
---> Package cups-filesystem.noarch 1:1.6.3-17.el7 will be updated
---> Package cups-filesystem.noarch 1:1.6.3-17.el7_1.1 will be an update
---> Package cups-libs.x86_64 1:1.6.3-17.el7 will be updated
---> Package cups-libs.x86_64 1:1.6.3-17.el7_1.1 will be an update
---> Package device-mapper.x86_64 7:1.02.93-3.el7 will be updated
---> Package device-mapper.x86_64 7:1.02.93-3.el7_1.1 will be an update
---> Package device-mapper-event.x86_64 7:1.02.93-3.el7 will be updated
---> Package device-mapper-event.x86_64 7:1.02.93-3.el7_1.1 will be an update
---> Package device-mapper-event-libs.x86_64 7:1.02.93-3.el7 will be updated
---> Package device-mapper-event-libs.x86_64 7:1.02.93-3.el7_1.1 will be an update
---> Package device-mapper-libs.x86_64 7:1.02.93-3.el7 will be updated
---> Package device-mapper-libs.x86_64 7:1.02.93-3.el7_1.1 will be an update
---> Package device-mapper-multipath.x86_64 0:0.4.9-77.el7 will be updated
---> Package device-mapper-multipath.x86_64 0:0.4.9-77.el7_1.2 will be an update
---> Package device-mapper-multipath-libs.x86_64 0:0.4.9-77.el7 will be updated
---> Package device-mapper-multipath-libs.x86_64 0:0.4.9-77.el7_1.2 will be an update
---> Package dnsmasq.x86_64 0:2.66-12.el7 will be updated
---> Package dnsmasq.x86_64 0:2.66-14.el7_1 will be an update
---> Package dracut.x86_64 0:033-240.el7 will be updated
---> Package dracut.x86_64 0:033-241.el7_1.5 will be an update
---> Package dracut-config-rescue.x86_64 0:033-240.el7 will be updated
---> Package dracut-config-rescue.x86_64 0:033-241.el7_1.5 will be an update
---> Package dracut-network.x86_64 0:033-240.el7 will be updated
---> Package dracut-network.x86_64 0:033-241.el7_1.5 will be an update
---> Package fcoe-utils.x86_64 0:1.0.29-9.el7 will be updated
---> Package fcoe-utils.x86_64 0:1.0.29-9.1.el7_1 will be an update
---> Package firefox.x86_64 0:31.4.0-1.el7.centos will be updated
---> Package firefox.x86_64 0:38.4.0-1.el7.centos will be an update
---> Package flac-libs.x86_64 0:1.3.0-4.el7 will be updated
---> Package flac-libs.x86_64 0:1.3.0-5.el7_1 will be an update
---> Package freerdp-libs.x86_64 0:1.0.2-5.el7 will be updated
---> Package freerdp-libs.x86_64 0:1.0.2-5.el7_1.1 will be an update
---> Package freetype.x86_64 0:2.4.11-9.el7 will be updated
---> Package freetype.x86_64 0:2.4.11-10.el7_1.1 will be an update
---> Package gdk-pixbuf2.x86_64 0:2.28.2-4.el7 will be updated
---> Package gdk-pixbuf2.x86_64 0:2.28.2-5.el7_1 will be an update
---> Package gmp.x86_64 1:6.0.0-11.el7 will be updated
---> Package gmp.x86_64 1:6.0.0-12.el7_1 will be an update
---> Package gnutls.x86_64 0:3.3.8-12.el7 will be updated
---> Package gnutls.x86_64 0:3.3.8-12.el7_1.1 will be an update
---> Package gnutls-dane.x86_64 0:3.3.8-12.el7 will be updated
---> Package gnutls-dane.x86_64 0:3.3.8-12.el7_1.1 will be an update
---> Package gnutls-utils.x86_64 0:3.3.8-12.el7 will be updated
---> Package gnutls-utils.x86_64 0:3.3.8-12.el7_1.1 will be an update
---> Package grub2.x86_64 1:2.02-0.16.el7.centos will be updated
---> Package grub2.x86_64 1:2.02-0.17.0.1.el7.centos.4 will be an update
---> Package grub2-tools.x86_64 1:2.02-0.16.el7.centos will be updated
---> Package grub2-tools.x86_64 1:2.02-0.17.0.1.el7.centos.4 will be an update
---> Package hwdata.noarch 0:0.252-7.5.el7 will be updated
---> Package hwdata.x86_64 0:0.252-7.8.el7_1 will be an update
---> Package iputils.x86_64 0:20121221-6.el7 will be updated
---> Package iputils.x86_64 0:20121221-6.el7_1.1 will be an update
---> Package irqbalance.x86_64 2:1.0.7-1.el7 will be updated
---> Package irqbalance.x86_64 2:1.0.7-2.el7_1 will be an update
---> Package java-1.7.0-openjdk.x86_64 1:1.7.0.75-2.5.4.2.el7_0 will be updated
---> Package java-1.7.0-openjdk.x86_64 1:1.7.0.91-2.6.2.1.el7_1 will be an update
---> Package java-1.7.0-openjdk-headless.x86_64 1:1.7.0.75-2.5.4.2.el7_0 will be updated
---> Package java-1.7.0-openjdk-headless.x86_64 1:1.7.0.91-2.6.2.1.el7_1 will be an update
--> Processing Dependency: libsctp.so.1(VERS_1)(64bit) for package: 1:java-1.7.0-openjdk-headless-1.7.0.91-2.6.2.1.el7_1.x86_64
--> Processing Dependency: libsctp.so.1()(64bit) for package: 1:java-1.7.0-openjdk-headless-1.7.0.91-2.6.2.1.el7_1.x86_64
--> Processing Dependency: libpcsclite.so.1()(64bit) for package: 1:java-1.7.0-openjdk-headless-1.7.0.91-2.6.2.1.el7_1.x86_64
---> Package kexec-tools.x86_64 0:2.0.7-19.el7 will be updated
---> Package kexec-tools.x86_64 0:2.0.7-19.el7_1.2 will be an update
---> Package kpartx.x86_64 0:0.4.9-77.el7 will be updated
---> Package kpartx.x86_64 0:0.4.9-77.el7_1.2 will be an update
---> Package krb5-libs.x86_64 0:1.12.2-14.el7 will be updated
---> Package krb5-libs.x86_64 0:1.12.2-15.el7_1 will be an update
---> Package libXfont.x86_64 0:1.4.7-2.el7_0 will be updated
---> Package libXfont.x86_64 0:1.4.7-3.el7_1 will be an update
---> Package libblkid.x86_64 0:2.23.2-21.el7 will be updated
---> Package libblkid.x86_64 0:2.23.2-22.el7_1.1 will be an update
---> Package libcacard.x86_64 10:1.5.3-86.el7 will be updated
---> Package libcacard.x86_64 10:1.5.3-86.el7_1.8 will be an update
---> Package libgcrypt.x86_64 0:1.5.3-12.el7 will be updated
---> Package libgcrypt.x86_64 0:1.5.3-12.el7_1.1 will be an update
---> Package libmount.x86_64 0:2.23.2-21.el7 will be updated
---> Package libmount.x86_64 0:2.23.2-22.el7_1.1 will be an update
---> Package libnl3.x86_64 0:3.2.21-8.el7 will be updated
---> Package libnl3.x86_64 0:3.2.21-9.el7_1 will be an update
---> Package libnl3-cli.x86_64 0:3.2.21-8.el7 will be updated
---> Package libnl3-cli.x86_64 0:3.2.21-9.el7_1 will be an update
---> Package libpcap.x86_64 14:1.5.3-3.el7_0.1 will be updated
---> Package libpcap.x86_64 14:1.5.3-4.el7_1.2 will be an update
---> Package libreport.x86_64 0:2.1.11-21.el7.centos.0.4 will be updated
---> Package libreport.x86_64 0:2.1.11-23.el7.centos.0.1 will be an update
---> Package libreport-anaconda.x86_64 0:2.1.11-21.el7.centos.0.4 will be updated
---> Package libreport-anaconda.x86_64 0:2.1.11-23.el7.centos.0.1 will be an update
---> Package libreport-centos.x86_64 0:2.1.11-21.el7.centos.0.4 will be updated
---> Package libreport-centos.x86_64 0:2.1.11-23.el7.centos.0.1 will be an update
---> Package libreport-cli.x86_64 0:2.1.11-21.el7.centos.0.4 will be updated
---> Package libreport-cli.x86_64 0:2.1.11-23.el7.centos.0.1 will be an update
---> Package libreport-filesystem.x86_64 0:2.1.11-21.el7.centos.0.4 will be updated
---> Package libreport-filesystem.x86_64 0:2.1.11-23.el7.centos.0.1 will be an update
---> Package libreport-gtk.x86_64 0:2.1.11-21.el7.centos.0.4 will be updated
---> Package libreport-gtk.x86_64 0:2.1.11-23.el7.centos.0.1 will be an update
---> Package libreport-plugin-bugzilla.x86_64 0:2.1.11-21.el7.centos.0.4 will be updated
---> Package libreport-plugin-bugzilla.x86_64 0:2.1.11-23.el7.centos.0.1 will be an update
---> Package libreport-plugin-mailx.x86_64 0:2.1.11-21.el7.centos.0.4 will be updated
---> Package libreport-plugin-mailx.x86_64 0:2.1.11-23.el7.centos.0.1 will be an update
---> Package libreport-plugin-mantisbt.x86_64 0:2.1.11-21.el7.centos.0.4 will be updated
---> Package libreport-plugin-mantisbt.x86_64 0:2.1.11-23.el7.centos.0.1 will be an update
---> Package libreport-plugin-reportuploader.x86_64 0:2.1.11-21.el7.centos.0.4 will be updated
---> Package libreport-plugin-reportuploader.x86_64 0:2.1.11-23.el7.centos.0.1 will be an update
---> Package libreport-plugin-rhtsupport.x86_64 0:2.1.11-21.el7.centos.0.4 will be updated
---> Package libreport-plugin-rhtsupport.x86_64 0:2.1.11-23.el7.centos.0.1 will be an update
---> Package libreport-plugin-ureport.x86_64 0:2.1.11-21.el7.centos.0.4 will be updated
---> Package libreport-plugin-ureport.x86_64 0:2.1.11-23.el7.centos.0.1 will be an update
---> Package libreport-python.x86_64 0:2.1.11-21.el7.centos.0.4 will be updated
---> Package libreport-python.x86_64 0:2.1.11-23.el7.centos.0.1 will be an update
---> Package libreport-rhel-anaconda-bugzilla.x86_64 0:2.1.11-21.el7.centos.0.4 will be updated
---> Package libreport-rhel-anaconda-bugzilla.x86_64 0:2.1.11-23.el7.centos.0.1 will be an update
---> Package libreport-web.x86_64 0:2.1.11-21.el7.centos.0.4 will be updated
---> Package libreport-web.x86_64 0:2.1.11-23.el7.centos.0.1 will be an update
---> Package libreswan.x86_64 0:3.12-5.el7 will be updated
---> Package libreswan.x86_64 0:3.15-5.el7_1 will be an update
---> Package libsmbclient.x86_64 0:4.1.12-21.el7_1 will be updated
---> Package libsmbclient.x86_64 0:4.1.12-24.el7_1 will be an update
---> Package libsss_idmap.x86_64 0:1.12.2-58.el7 will be updated
---> Package libsss_idmap.x86_64 0:1.12.2-58.el7_1.18 will be an update
---> Package libsss_nss_idmap.x86_64 0:1.12.2-58.el7 will be updated
---> Package libsss_nss_idmap.x86_64 0:1.12.2-58.el7_1.18 will be an update
---> Package libusbx.x86_64 0:1.0.15-4.el7 will be updated
---> Package libusbx.x86_64 0:1.0.20-5.el7.centos will be an update
---> Package libuser.x86_64 0:0.60-5.el7 will be updated
---> Package libuser.x86_64 0:0.60-7.el7_1 will be an update
---> Package libuser-python.x86_64 0:0.60-5.el7 will be updated
---> Package libuser-python.x86_64 0:0.60-7.el7_1 will be an update
---> Package libuuid.x86_64 0:2.23.2-21.el7 will be updated
---> Package libuuid.x86_64 0:2.23.2-22.el7_1.1 will be an update
---> Package libvirt-client.x86_64 0:1.2.8-16.el7 will be updated
---> Package libvirt-client.x86_64 0:1.2.8-16.el7_1.5 will be an update
---> Package libvirt-daemon.x86_64 0:1.2.8-16.el7 will be updated
---> Package libvirt-daemon.x86_64 0:1.2.8-16.el7_1.5 will be an update
---> Package libvirt-daemon-driver-interface.x86_64 0:1.2.8-16.el7 will be updated
---> Package libvirt-daemon-driver-interface.x86_64 0:1.2.8-16.el7_1.5 will be an update
---> Package libvirt-daemon-driver-network.x86_64 0:1.2.8-16.el7 will be updated
---> Package libvirt-daemon-driver-network.x86_64 0:1.2.8-16.el7_1.5 will be an update
---> Package libvirt-daemon-driver-nodedev.x86_64 0:1.2.8-16.el7 will be updated
---> Package libvirt-daemon-driver-nodedev.x86_64 0:1.2.8-16.el7_1.5 will be an update
---> Package libvirt-daemon-driver-nwfilter.x86_64 0:1.2.8-16.el7 will be updated
---> Package libvirt-daemon-driver-nwfilter.x86_64 0:1.2.8-16.el7_1.5 will be an update
---> Package libvirt-daemon-driver-qemu.x86_64 0:1.2.8-16.el7 will be updated
---> Package libvirt-daemon-driver-qemu.x86_64 0:1.2.8-16.el7_1.5 will be an update
---> Package libvirt-daemon-driver-secret.x86_64 0:1.2.8-16.el7 will be updated
---> Package libvirt-daemon-driver-secret.x86_64 0:1.2.8-16.el7_1.5 will be an update
---> Package libvirt-daemon-driver-storage.x86_64 0:1.2.8-16.el7 will be updated
---> Package libvirt-daemon-driver-storage.x86_64 0:1.2.8-16.el7_1.5 will be an update
---> Package libvirt-daemon-kvm.x86_64 0:1.2.8-16.el7 will be updated
---> Package libvirt-daemon-kvm.x86_64 0:1.2.8-16.el7_1.5 will be an update
---> Package libwbclient.x86_64 0:4.1.12-21.el7_1 will be updated
---> Package libwbclient.x86_64 0:4.1.12-24.el7_1 will be an update
---> Package lvm2.x86_64 7:2.02.115-3.el7 will be updated
---> Package lvm2.x86_64 7:2.02.115-3.el7_1.1 will be an update
---> Package lvm2-libs.x86_64 7:2.02.115-3.el7 will be updated
---> Package lvm2-libs.x86_64 7:2.02.115-3.el7_1.1 will be an update
---> Package mariadb-libs.x86_64 1:5.5.41-2.el7_0 will be updated
---> Package mariadb-libs.x86_64 1:5.5.44-1.el7_1 will be an update
---> Package mdadm.x86_64 0:3.3.2-2.el7 will be updated
---> Package mdadm.x86_64 0:3.3.2-2.el7_1.1 will be an update
---> Package mesa-dri-drivers.x86_64 0:10.2.7-5.20140910.el7 will be updated
---> Package mesa-dri-drivers.x86_64 0:10.2.7-5.20140910.el7_1.1 will be an update
---> Package mesa-filesystem.x86_64 0:10.2.7-5.20140910.el7 will be updated
---> Package mesa-filesystem.x86_64 0:10.2.7-5.20140910.el7_1.1 will be an update
---> Package mesa-libEGL.x86_64 0:10.2.7-5.20140910.el7 will be updated
---> Package mesa-libEGL.x86_64 0:10.2.7-5.20140910.el7_1.1 will be an update
---> Package mesa-libGL.x86_64 0:10.2.7-5.20140910.el7 will be updated
---> Package mesa-libGL.x86_64 0:10.2.7-5.20140910.el7_1.1 will be an update
---> Package mesa-libgbm.x86_64 0:10.2.7-5.20140910.el7 will be updated
---> Package mesa-libgbm.x86_64 0:10.2.7-5.20140910.el7_1.1 will be an update
---> Package mesa-libglapi.x86_64 0:10.2.7-5.20140910.el7 will be updated
---> Package mesa-libglapi.x86_64 0:10.2.7-5.20140910.el7_1.1 will be an update
---> Package mesa-libxatracker.x86_64 0:10.2.7-5.20140910.el7 will be updated
---> Package mesa-libxatracker.x86_64 0:10.2.7-5.20140910.el7_1.1 will be an update
---> Package nspr.x86_64 0:4.10.6-3.el7 will be updated
---> Package nspr.x86_64 0:4.10.8-2.el7_1 will be an update
---> Package nss.x86_64 0:3.16.2.3-5.el7 will be updated
---> Package nss.x86_64 0:3.19.1-7.el7_1.2 will be an update
---> Package nss-softokn.x86_64 0:3.16.2.3-9.el7 will be updated
---> Package nss-softokn.x86_64 0:3.16.2.3-13.el7_1 will be an update
---> Package nss-softokn-freebl.x86_64 0:3.16.2.3-9.el7 will be updated
---> Package nss-softokn-freebl.x86_64 0:3.16.2.3-13.el7_1 will be an update
---> Package nss-sysinit.x86_64 0:3.16.2.3-5.el7 will be updated
---> Package nss-sysinit.x86_64 0:3.19.1-7.el7_1.2 will be an update
---> Package nss-tools.x86_64 0:3.16.2.3-5.el7 will be updated
---> Package nss-tools.x86_64 0:3.19.1-7.el7_1.2 will be an update
---> Package nss-util.x86_64 0:3.16.2.3-2.el7 will be updated
---> Package nss-util.x86_64 0:3.19.1-4.el7_1 will be an update
---> Package numactl-libs.x86_64 0:2.0.9-4.el7 will be updated
---> Package numactl-libs.x86_64 0:2.0.9-5.el7_1 will be an update
---> Package openldap.x86_64 0:2.4.39-6.el7 will be updated
---> Package openldap.x86_64 0:2.4.39-7.el7.centos will be an update
---> Package openssh.x86_64 0:6.6.1p1-11.el7 will be updated
---> Package openssh.x86_64 0:6.6.1p1-12.el7_1 will be an update
---> Package openssh-clients.x86_64 0:6.6.1p1-11.el7 will be updated
---> Package openssh-clients.x86_64 0:6.6.1p1-12.el7_1 will be an update
---> Package openssh-server.x86_64 0:6.6.1p1-11.el7 will be updated
---> Package openssh-server.x86_64 0:6.6.1p1-12.el7_1 will be an update
---> Package openssl.x86_64 1:1.0.1e-42.el7 will be updated
---> Package openssl.x86_64 1:1.0.1e-42.el7.9 will be an update
---> Package openssl-libs.x86_64 1:1.0.1e-42.el7 will be updated
---> Package openssl-libs.x86_64 1:1.0.1e-42.el7.9 will be an update
---> Package pam.x86_64 0:1.1.8-12.el7 will be updated
---> Package pam.x86_64 0:1.1.8-12.el7_1.1 will be an update
---> Package python.x86_64 0:2.7.5-16.el7 will be updated
---> Package python.x86_64 0:2.7.5-18.el7_1.1 will be an update
---> Package python-blivet.noarch 0:0.61.0.26-1.el7 will be updated
---> Package python-blivet.noarch 0:0.61.0.27-1.el7_1 will be an update
---> Package python-chardet.noarch 0:2.0.1-7.el7 will be updated
---> Package python-chardet.noarch 0:2.2.1-1.el7_1 will be an update
---> Package python-libs.x86_64 0:2.7.5-16.el7 will be updated
---> Package python-libs.x86_64 0:2.7.5-18.el7_1.1 will be an update
---> Package qemu-img.x86_64 10:1.5.3-86.el7 will be updated
---> Package qemu-img.x86_64 10:1.5.3-86.el7_1.8 will be an update
---> Package qemu-kvm.x86_64 10:1.5.3-86.el7 will be updated
---> Package qemu-kvm.x86_64 10:1.5.3-86.el7_1.8 will be an update
---> Package qemu-kvm-common.x86_64 10:1.5.3-86.el7 will be updated
---> Package qemu-kvm-common.x86_64 10:1.5.3-86.el7_1.8 will be an update
---> Package rsync.x86_64 0:3.0.9-15.el7 will be updated
---> Package rsync.x86_64 0:3.1.1-8.fc23 will be an update
---> Package rsyslog.x86_64 0:7.4.7-7.el7_0 will be updated
---> Package rsyslog.x86_64 0:7.4.7-7.el7_1.1 will be an update
---> Package rsyslog-mmjsonparse.x86_64 0:7.4.7-7.el7_0 will be updated
---> Package rsyslog-mmjsonparse.x86_64 0:7.4.7-7.el7_1.1 will be an update
---> Package samba-common.x86_64 0:4.1.12-21.el7_1 will be updated
---> Package samba-common.x86_64 0:4.1.12-24.el7_1 will be an update
---> Package samba-libs.x86_64 0:4.1.12-21.el7_1 will be updated
---> Package samba-libs.x86_64 0:4.1.12-24.el7_1 will be an update
---> Package scl-utils.x86_64 0:20130529-9.el7_0 will be updated
---> Package scl-utils.x86_64 0:20130529-17.el7_1 will be an update
---> Package selinux-policy.noarch 0:3.13.1-23.el7 will be updated
---> Package selinux-policy.noarch 0:3.13.1-23.el7_1.21 will be an update
---> Package selinux-policy-targeted.noarch 0:3.13.1-23.el7 will be updated
---> Package selinux-policy-targeted.noarch 0:3.13.1-23.el7_1.21 will be an update
---> Package setroubleshoot.x86_64 0:3.2.17-3.el7 will be updated
---> Package setroubleshoot.x86_64 0:3.2.17-4.1.el7_1 will be an update
---> Package setroubleshoot-server.x86_64 0:3.2.17-3.el7 will be updated
---> Package setroubleshoot-server.x86_64 0:3.2.17-4.1.el7_1 will be an update
---> Package sos.noarch 0:3.2-15.el7.centos will be updated
---> Package sos.noarch 0:3.2-15.el7.centos.8 will be an update
---> Package spice-server.x86_64 0:0.12.4-9.el7 will be updated
---> Package spice-server.x86_64 0:0.12.4-9.el7_1.3 will be an update
---> Package sqlite.x86_64 0:3.7.17-4.el7 will be updated
---> Package sqlite.x86_64 0:3.7.17-6.el7_1.1 will be an update
---> Package sssd-client.x86_64 0:1.12.2-58.el7 will be updated
---> Package sssd-client.x86_64 0:1.12.2-58.el7_1.18 will be an update
---> Package systemtap-runtime.x86_64 0:2.6-8.el7 will be updated
---> Package systemtap-runtime.x86_64 0:2.6-10.el7_1 will be an update
---> Package trousers.x86_64 0:0.3.11.2-3.el7 will be updated
---> Package trousers.x86_64 0:0.3.11.2-4.el7_1 will be an update
---> Package tzdata.noarch 0:2015a-1.el7 will be updated
---> Package tzdata.noarch 0:2015g-1.el7 will be an update
---> Package tzdata-java.noarch 0:2015a-1.el7 will be updated
---> Package tzdata-java.noarch 0:2015g-1.el7 will be an update
---> Package unzip.x86_64 0:6.0-13.el7 will be updated
---> Package unzip.x86_64 0:6.0-15.el7 will be an update
---> Package util-linux.x86_64 0:2.23.2-21.el7 will be updated
---> Package util-linux.x86_64 0:2.23.2-22.el7_1.1 will be an update
---> Package wpa_supplicant.x86_64 1:2.0-13.el7_0 will be updated
---> Package wpa_supplicant.x86_64 1:2.0-17.el7_1 will be an update
---> Package xorg-x11-server-Xorg.x86_64 0:1.15.0-32.el7 will be updated
---> Package xorg-x11-server-Xorg.x86_64 0:1.15.0-33.el7_1 will be an update
---> Package xorg-x11-server-common.x86_64 0:1.15.0-32.el7 will be updated
---> Package xorg-x11-server-common.x86_64 0:1.15.0-33.el7_1 will be an update
--> Running transaction check
---> Package lksctp-tools.x86_64 0:1.0.13-3.el7 will be installed
---> Package pcsc-lite-libs.x86_64 0:1.8.8-5.el7 will be installed
--> Finished Dependency Resolution

Dependencies Resolved

================================================================================================================================================
 Package                                    Arch             Version                                          Repository                   Size
================================================================================================================================================
Updating:
 NetworkManager                             x86_64           1:1.0.0-16.git20150121.b4ea599c.el7_1            C7.1.1503-updates           1.9 M
 NetworkManager-adsl                        x86_64           1:1.0.0-16.git20150121.b4ea599c.el7_1            C7.1.1503-updates           122 k
 NetworkManager-glib                        x86_64           1:1.0.0-16.git20150121.b4ea599c.el7_1            C7.1.1503-updates           376 k
 NetworkManager-libnm                       x86_64           1:1.0.0-16.git20150121.b4ea599c.el7_1            C7.1.1503-updates           468 k
 NetworkManager-team                        x86_64           1:1.0.0-16.git20150121.b4ea599c.el7_1            C7.1.1503-updates           122 k
 NetworkManager-tui                         x86_64           1:1.0.0-16.git20150121.b4ea599c.el7_1            C7.1.1503-updates           203 k
 NetworkManager-wifi                        x86_64           1:1.0.0-16.git20150121.b4ea599c.el7_1            C7.1.1503-updates           151 k
 abrt                                       x86_64           2.1.11-22.el7.centos.0.1                         C7.1.1503-updates           511 k
 abrt-addon-ccpp                            x86_64           2.1.11-22.el7.centos.0.1                         C7.1.1503-updates           183 k
 abrt-addon-kerneloops                      x86_64           2.1.11-22.el7.centos.0.1                         C7.1.1503-updates           100 k
 abrt-addon-pstoreoops                      x86_64           2.1.11-22.el7.centos.0.1                         C7.1.1503-updates            91 k
 abrt-addon-python                          x86_64           2.1.11-22.el7.centos.0.1                         C7.1.1503-updates            97 k
 abrt-addon-vmcore                          x86_64           2.1.11-22.el7.centos.0.1                         C7.1.1503-updates           101 k
 abrt-addon-xorg                            x86_64           2.1.11-22.el7.centos.0.1                         C7.1.1503-updates            92 k
 abrt-cli                                   x86_64           2.1.11-22.el7.centos.0.1                         C7.1.1503-updates            82 k
 abrt-console-notification                  x86_64           2.1.11-22.el7.centos.0.1                         C7.1.1503-updates            83 k
 abrt-dbus                                  x86_64           2.1.11-22.el7.centos.0.1                         C7.1.1503-updates           115 k
 abrt-desktop                               x86_64           2.1.11-22.el7.centos.0.1                         C7.1.1503-updates            82 k
 abrt-gui                                   x86_64           2.1.11-22.el7.centos.0.1                         C7.1.1503-updates           185 k
 abrt-gui-libs                              x86_64           2.1.11-22.el7.centos.0.1                         C7.1.1503-updates            89 k
 abrt-libs                                  x86_64           2.1.11-22.el7.centos.0.1                         C7.1.1503-updates           102 k
 abrt-python                                x86_64           2.1.11-22.el7.centos.0.1                         C7.1.1503-updates           104 k
 abrt-retrace-client                        x86_64           2.1.11-22.el7.centos.0.1                         C7.1.1503-updates           117 k
 abrt-tui                                   x86_64           2.1.11-22.el7.centos.0.1                         C7.1.1503-updates            93 k
 bind-libs                                  x86_64           32:9.9.4-18.el7_1.5                              C7.1.1503-updates           1.0 M
 bind-libs-lite                             x86_64           32:9.9.4-18.el7_1.5                              C7.1.1503-updates           713 k
 bind-license                               noarch           32:9.9.4-18.el7_1.5                              C7.1.1503-updates            80 k
 bind-utils                                 x86_64           32:9.9.4-18.el7_1.5                              C7.1.1503-updates           199 k
 binutils                                   x86_64           2.23.52.0.1-30.el7_1.2                           C7.1.1503-updates           5.0 M
 ca-certificates                            noarch           2015.2.4-70.0.el7_1                              C7.1.1503-updates           441 k
 centos-logos                               noarch           70.0.6-3.el7.centos                              C7.1.1503-updates            21 M
 clutter                                    x86_64           1.14.4-12.el7_1.1                                C7.1.1503-updates           975 k
 coreutils                                  x86_64           8.22-12.el7_1.2                                  C7.1.1503-updates           3.2 M
 crash                                      x86_64           7.0.9-5.el7_1                                    C7.1.1503-updates           2.6 M
 cups                                       x86_64           1:1.6.3-17.el7_1.1                               C7.1.1503-updates           1.3 M
 cups-client                                x86_64           1:1.6.3-17.el7_1.1                               C7.1.1503-updates           148 k
 cups-filesystem                            noarch           1:1.6.3-17.el7_1.1                               C7.1.1503-updates            93 k
 cups-libs                                  x86_64           1:1.6.3-17.el7_1.1                               C7.1.1503-updates           354 k
 device-mapper                              x86_64           7:1.02.93-3.el7_1.1                              C7.1.1503-updates           209 k
 device-mapper-event                        x86_64           7:1.02.93-3.el7_1.1                              C7.1.1503-updates           159 k
 device-mapper-event-libs                   x86_64           7:1.02.93-3.el7_1.1                              C7.1.1503-updates           151 k
 device-mapper-libs                         x86_64           7:1.02.93-3.el7_1.1                              C7.1.1503-updates           259 k
 device-mapper-multipath                    x86_64           0.4.9-77.el7_1.2                                 C7.1.1503-updates           113 k
 device-mapper-multipath-libs               x86_64           0.4.9-77.el7_1.2                                 C7.1.1503-updates           215 k
 dnsmasq                                    x86_64           2.66-14.el7_1                                    C7.1.1503-updates           229 k
 dracut                                     x86_64           033-241.el7_1.5                                  C7.1.1503-updates           301 k
 dracut-config-rescue                       x86_64           033-241.el7_1.5                                  C7.1.1503-updates            45 k
 dracut-network                             x86_64           033-241.el7_1.5                                  C7.1.1503-updates            82 k
 fcoe-utils                                 x86_64           1.0.29-9.1.el7_1                                 C7.1.1503-updates           116 k
 firefox                                    x86_64           38.4.0-1.el7.centos                              C7.1.1503-updates            72 M
 flac-libs                                  x86_64           1.3.0-5.el7_1                                    C7.1.1503-updates           169 k
 freerdp-libs                               x86_64           1.0.2-5.el7_1.1                                  C7.1.1503-updates           221 k
 freetype                                   x86_64           2.4.11-10.el7_1.1                                C7.1.1503-updates           391 k
 gdk-pixbuf2                                x86_64           2.28.2-5.el7_1                                   C7.1.1503-updates           533 k
 gmp                                        x86_64           1:6.0.0-12.el7_1                                 C7.1.1503-updates           280 k
 gnutls                                     x86_64           3.3.8-12.el7_1.1                                 C7.1.1503-updates           662 k
 gnutls-dane                                x86_64           3.3.8-12.el7_1.1                                 C7.1.1503-updates            32 k
 gnutls-utils                               x86_64           3.3.8-12.el7_1.1                                 C7.1.1503-updates           228 k
 grub2                                      x86_64           1:2.02-0.17.0.1.el7.centos.4                     C7.1.1503-updates           1.5 M
 grub2-tools                                x86_64           1:2.02-0.17.0.1.el7.centos.4                     C7.1.1503-updates           3.3 M
 hwdata                                     x86_64           0.252-7.8.el7_1                                  C7.1.1503-updates           2.0 M
 iputils                                    x86_64           20121221-6.el7_1.1                               C7.1.1503-updates           152 k
 irqbalance                                 x86_64           2:1.0.7-2.el7_1                                  C7.1.1503-updates            43 k
 java-1.7.0-openjdk                         x86_64           1:1.7.0.91-2.6.2.1.el7_1                         C7.1.1503-updates           204 k
 java-1.7.0-openjdk-headless                x86_64           1:1.7.0.91-2.6.2.1.el7_1                         C7.1.1503-updates            25 M
 kexec-tools                                x86_64           2.0.7-19.el7_1.2                                 C7.1.1503-updates           297 k
 kpartx                                     x86_64           0.4.9-77.el7_1.2                                 C7.1.1503-updates            56 k
 krb5-libs                                  x86_64           1.12.2-15.el7_1                                  C7.1.1503-updates           826 k
 libXfont                                   x86_64           1.4.7-3.el7_1                                    C7.1.1503-updates           145 k
 libblkid                                   x86_64           2.23.2-22.el7_1.1                                C7.1.1503-updates           165 k
 libcacard                                  x86_64           10:1.5.3-86.el7_1.8                              C7.1.1503-updates           213 k
 libgcrypt                                  x86_64           1.5.3-12.el7_1.1                                 C7.1.1503-updates           263 k
 libmount                                   x86_64           2.23.2-22.el7_1.1                                C7.1.1503-updates           167 k
 libnl3                                     x86_64           3.2.21-9.el7_1                                   C7.1.1503-updates           197 k
 libnl3-cli                                 x86_64           3.2.21-9.el7_1                                   C7.1.1503-updates            78 k
 libpcap                                    x86_64           14:1.5.3-4.el7_1.2                               C7.1.1503-updates           137 k
 libreport                                  x86_64           2.1.11-23.el7.centos.0.1                         C7.1.1503-updates           440 k
 libreport-anaconda                         x86_64           2.1.11-23.el7.centos.0.1                         C7.1.1503-updates            46 k
 libreport-centos                           x86_64           2.1.11-23.el7.centos.0.1                         C7.1.1503-updates            46 k
 libreport-cli                              x86_64           2.1.11-23.el7.centos.0.1                         C7.1.1503-updates            48 k
 libreport-filesystem                       x86_64           2.1.11-23.el7.centos.0.1                         C7.1.1503-updates            36 k
 libreport-gtk                              x86_64           2.1.11-23.el7.centos.0.1                         C7.1.1503-updates            95 k
 libreport-plugin-bugzilla                  x86_64           2.1.11-23.el7.centos.0.1                         C7.1.1503-updates            85 k
 libreport-plugin-mailx                     x86_64           2.1.11-23.el7.centos.0.1                         C7.1.1503-updates            55 k
 libreport-plugin-mantisbt                  x86_64           2.1.11-23.el7.centos.0.1                         C7.1.1503-updates            68 k
 libreport-plugin-reportuploader            x86_64           2.1.11-23.el7.centos.0.1                         C7.1.1503-updates            58 k
 libreport-plugin-rhtsupport                x86_64           2.1.11-23.el7.centos.0.1                         C7.1.1503-updates            63 k
 libreport-plugin-ureport                   x86_64           2.1.11-23.el7.centos.0.1                         C7.1.1503-updates            52 k
 libreport-python                           x86_64           2.1.11-23.el7.centos.0.1                         C7.1.1503-updates            65 k
 libreport-rhel-anaconda-bugzilla           x86_64           2.1.11-23.el7.centos.0.1                         C7.1.1503-updates            38 k
 libreport-web                              x86_64           2.1.11-23.el7.centos.0.1                         C7.1.1503-updates            52 k
 libreswan                                  x86_64           3.15-5.el7_1                                     C7.1.1503-updates           1.2 M
 libsmbclient                               x86_64           4.1.12-24.el7_1                                  C7.1.1503-updates           120 k
 libsss_idmap                               x86_64           1.12.2-58.el7_1.18                               C7.1.1503-updates            92 k
 libsss_nss_idmap                           x86_64           1.12.2-58.el7_1.18                               C7.1.1503-updates            91 k
 libusbx                                    x86_64           1.0.20-5.el7.centos                              devenv-extras                60 k
 libuser                                    x86_64           0.60-7.el7_1                                     C7.1.1503-updates           398 k
 libuser-python                             x86_64           0.60-7.el7_1                                     C7.1.1503-updates            52 k
 libuuid                                    x86_64           2.23.2-22.el7_1.1                                C7.1.1503-updates            73 k
 libvirt-client                             x86_64           1.2.8-16.el7_1.5                                 C7.1.1503-updates           4.3 M
 libvirt-daemon                             x86_64           1.2.8-16.el7_1.5                                 C7.1.1503-updates           541 k
 libvirt-daemon-driver-interface            x86_64           1.2.8-16.el7_1.5                                 C7.1.1503-updates           140 k
 libvirt-daemon-driver-network              x86_64           1.2.8-16.el7_1.5                                 C7.1.1503-updates           269 k
 libvirt-daemon-driver-nodedev              x86_64           1.2.8-16.el7_1.5                                 C7.1.1503-updates           140 k
 libvirt-daemon-driver-nwfilter             x86_64           1.2.8-16.el7_1.5                                 C7.1.1503-updates           163 k
 libvirt-daemon-driver-qemu                 x86_64           1.2.8-16.el7_1.5                                 C7.1.1503-updates           512 k
 libvirt-daemon-driver-secret               x86_64           1.2.8-16.el7_1.5                                 C7.1.1503-updates           134 k
 libvirt-daemon-driver-storage              x86_64           1.2.8-16.el7_1.5                                 C7.1.1503-updates           291 k
 libvirt-daemon-kvm                         x86_64           1.2.8-16.el7_1.5                                 C7.1.1503-updates            96 k
 libwbclient                                x86_64           4.1.12-24.el7_1                                  C7.1.1503-updates            90 k
 lvm2                                       x86_64           7:2.02.115-3.el7_1.1                             C7.1.1503-updates           897 k
 lvm2-libs                                  x86_64           7:2.02.115-3.el7_1.1                             C7.1.1503-updates           765 k
 mariadb-libs                               x86_64           1:5.5.44-1.el7_1                                 C7.1.1503-updates           754 k
 mdadm                                      x86_64           3.3.2-2.el7_1.1                                  C7.1.1503-updates           391 k
 mesa-dri-drivers                           x86_64           10.2.7-5.20140910.el7_1.1                        C7.1.1503-updates            11 M
 mesa-filesystem                            x86_64           10.2.7-5.20140910.el7_1.1                        C7.1.1503-updates            22 k
 mesa-libEGL                                x86_64           10.2.7-5.20140910.el7_1.1                        C7.1.1503-updates            70 k
 mesa-libGL                                 x86_64           10.2.7-5.20140910.el7_1.1                        C7.1.1503-updates           149 k
 mesa-libgbm                                x86_64           10.2.7-5.20140910.el7_1.1                        C7.1.1503-updates            31 k
 mesa-libglapi                              x86_64           10.2.7-5.20140910.el7_1.1                        C7.1.1503-updates            37 k
 mesa-libxatracker                          x86_64           10.2.7-5.20140910.el7_1.1                        C7.1.1503-updates           624 k
 nspr                                       x86_64           4.10.8-2.el7_1                                   C7.1.1503-updates           126 k
 nss                                        x86_64           3.19.1-7.el7_1.2                                 C7.1.1503-updates           851 k
 nss-softokn                                x86_64           3.16.2.3-13.el7_1                                C7.1.1503-updates           305 k
 nss-softokn-freebl                         x86_64           3.16.2.3-13.el7_1                                C7.1.1503-updates           204 k
 nss-sysinit                                x86_64           3.19.1-7.el7_1.2                                 C7.1.1503-updates            52 k
 nss-tools                                  x86_64           3.19.1-7.el7_1.2                                 C7.1.1503-updates           480 k
 nss-util                                   x86_64           3.19.1-4.el7_1                                   C7.1.1503-updates            71 k
 numactl-libs                               x86_64           2.0.9-5.el7_1                                    C7.1.1503-updates            29 k
 openldap                                   x86_64           2.4.39-7.el7.centos                              C7.1.1503-updates           344 k
 openssh                                    x86_64           6.6.1p1-12.el7_1                                 C7.1.1503-updates           431 k
 openssh-clients                            x86_64           6.6.1p1-12.el7_1                                 C7.1.1503-updates           634 k
 openssh-server                             x86_64           6.6.1p1-12.el7_1                                 C7.1.1503-updates           432 k
 openssl                                    x86_64           1:1.0.1e-42.el7.9                                C7.1.1503-updates           711 k
 openssl-libs                               x86_64           1:1.0.1e-42.el7.9                                C7.1.1503-updates           949 k
 pam                                        x86_64           1.1.8-12.el7_1.1                                 C7.1.1503-updates           714 k
 python                                     x86_64           2.7.5-18.el7_1.1                                 C7.1.1503-updates            86 k
 python-blivet                              noarch           0.61.0.27-1.el7_1                                C7.1.1503-updates           692 k
 python-chardet                             noarch           2.2.1-1.el7_1                                    C7.1.1503-updates           227 k
 python-libs                                x86_64           2.7.5-18.el7_1.1                                 C7.1.1503-updates           5.6 M
 qemu-img                                   x86_64           10:1.5.3-86.el7_1.8                              C7.1.1503-updates           624 k
 qemu-kvm                                   x86_64           10:1.5.3-86.el7_1.8                              C7.1.1503-updates           1.8 M
 qemu-kvm-common                            x86_64           10:1.5.3-86.el7_1.8                              C7.1.1503-updates           369 k
 rsync                                      x86_64           3.1.1-8.fc23                                     devenv-extras               392 k
 rsyslog                                    x86_64           7.4.7-7.el7_1.1                                  C7.1.1503-updates           556 k
 rsyslog-mmjsonparse                        x86_64           7.4.7-7.el7_1.1                                  C7.1.1503-updates            27 k
 samba-common                               x86_64           4.1.12-24.el7_1                                  C7.1.1503-updates           709 k
 samba-libs                                 x86_64           4.1.12-24.el7_1                                  C7.1.1503-updates           4.3 M
 scl-utils                                  x86_64           20130529-17.el7_1                                C7.1.1503-updates            24 k
 selinux-policy                             noarch           3.13.1-23.el7_1.21                               C7.1.1503-updates           360 k
 selinux-policy-targeted                    noarch           3.13.1-23.el7_1.21                               C7.1.1503-updates           3.9 M
 setroubleshoot                             x86_64           3.2.17-4.1.el7_1                                 C7.1.1503-updates           125 k
 setroubleshoot-server                      x86_64           3.2.17-4.1.el7_1                                 C7.1.1503-updates           342 k
 sos                                        noarch           3.2-15.el7.centos.8                              C7.1.1503-updates           290 k
 spice-server                               x86_64           0.12.4-9.el7_1.3                                 C7.1.1503-updates           379 k
 sqlite                                     x86_64           3.7.17-6.el7_1.1                                 C7.1.1503-updates           394 k
 sssd-client                                x86_64           1.12.2-58.el7_1.18                               C7.1.1503-updates           144 k
 systemtap-runtime                          x86_64           2.6-10.el7_1                                     C7.1.1503-updates           266 k
 trousers                                   x86_64           0.3.11.2-4.el7_1                                 C7.1.1503-updates           286 k
 tzdata                                     noarch           2015g-1.el7                                      C7.1.1503-updates           431 k
 tzdata-java                                noarch           2015g-1.el7                                      C7.1.1503-updates           176 k
 unzip                                      x86_64           6.0-15.el7                                       C7.1.1503-updates           166 k
 util-linux                                 x86_64           2.23.2-22.el7_1.1                                C7.1.1503-updates           1.9 M
 wpa_supplicant                             x86_64           1:2.0-17.el7_1                                   C7.1.1503-updates           803 k
 xorg-x11-server-Xorg                       x86_64           1.15.0-33.el7_1                                  C7.1.1503-updates           1.3 M
 xorg-x11-server-common                     x86_64           1.15.0-33.el7_1                                  C7.1.1503-updates            49 k
Installing for dependencies:
 lksctp-tools                               x86_64           1.0.13-3.el7                                     C7.1.1503-base               87 k
 pcsc-lite-libs                             x86_64           1.8.8-5.el7                                      C7.1.1503-base               34 k

Transaction Summary
================================================================================================================================================
Install               ( 2 Dependent packages)
Upgrade  166 Packages

Total download size: 211 M
Downloading packages:
No Presto metadata available for devenv-extras
Delta RPMs reduced 112 M of updates to 20 M (82% saved)
(1/168): NetworkManager-glib-1.0.0-14.git20150121.b4ea599c.el7_1.0.0-16.git20150121.b4ea599c.el7_1.x86_64.drpm           | 119 kB  00:00:05     
(2/168): NetworkManager-libnm-1.0.0-14.git20150121.b4ea599c.el7_1.0.0-16.git20150121.b4ea599c.el7_1.x86_64.drpm          | 139 kB  00:00:00     
(3/168): abrt-2.1.11-19.el7.centos.0.3_2.1.11-22.el7.centos.0.1.x86_64.drpm                                              | 165 kB  00:00:00     
(4/168): abrt-addon-ccpp-2.1.11-19.el7.centos.0.3_2.1.11-22.el7.centos.0.1.x86_64.drpm                                   | 132 kB  00:00:00     
(5/168): NetworkManager-1.0.0-14.git20150121.b4ea599c.el7_1.0.0-16.git20150121.b4ea599c.el7_1.x86_64.drpm                | 1.2 MB  00:00:07     
(6/168): abrt-gui-2.1.11-19.el7.centos.0.3_2.1.11-22.el7.centos.0.1.x86_64.drpm                                          | 110 kB  00:00:00     
(7/168): bind-libs-9.9.4-18.el7_9.9.4-18.el7_1.5.x86_64.drpm                                                             | 168 kB  00:00:00     
(8/168): bind-libs-lite-9.9.4-18.el7_9.9.4-18.el7_1.5.x86_64.drpm                                                        | 139 kB  00:00:00     
(9/168): ca-certificates-2014.1.98-72.el7_2015.2.4-70.0.el7_1.noarch.drpm                                                |  84 kB  00:00:00     
(10/168): centos-logos-70.0.6-1.el7.centos_70.0.6-3.el7.centos.noarch.drpm                                               | 102 kB  00:00:00     
(11/168): clutter-1.14.4-12.el7_1.14.4-12.el7_1.1.x86_64.drpm                                                            |  65 kB  00:00:00     
(12/168): binutils-2.23.52.0.1-30.el7_2.23.52.0.1-30.el7_1.2.x86_64.drpm                                                 | 3.0 MB  00:00:02     
(13/168): coreutils-8.22-11.el7_8.22-12.el7_1.2.x86_64.drpm                                                              | 1.4 MB  00:00:01     
(14/168): cups-1.6.3-17.el7_1.6.3-17.el7_1.1.x86_64.drpm                                                                 | 465 kB  00:00:00     
(15/168): cups-libs-1.6.3-17.el7_1.6.3-17.el7_1.1.x86_64.drpm                                                            | 108 kB  00:00:00     
(16/168): device-mapper-libs-1.02.93-3.el7_1.02.93-3.el7_1.1.x86_64.drpm                                                 | 142 kB  00:00:00     
(17/168): device-mapper-multipath-libs-0.4.9-77.el7_0.4.9-77.el7_1.2.x86_64.drpm                                         |  67 kB  00:00:00     
(18/168): dracut-network-033-240.el7_033-241.el7_1.5.x86_64.drpm                                                         |  52 kB  00:00:00     
(19/168): dracut-033-240.el7_033-241.el7_1.5.x86_64.drpm                                                                 | 121 kB  00:00:00     
(20/168): flac-libs-1.3.0-4.el7_1.3.0-5.el7_1.x86_64.drpm                                                                |  27 kB  00:00:00     
(21/168): freerdp-libs-1.0.2-5.el7_1.0.2-5.el7_1.1.x86_64.drpm                                                           |  26 kB  00:00:00     
(22/168): freetype-2.4.11-9.el7_2.4.11-10.el7_1.1.x86_64.drpm                                                            |  62 kB  00:00:00     
(23/168): gdk-pixbuf2-2.28.2-4.el7_2.28.2-5.el7_1.x86_64.drpm                                                            |  75 kB  00:00:00     
(24/168): gmp-6.0.0-11.el7_6.0.0-12.el7_1.x86_64.drpm                                                                    |  25 kB  00:00:00     
(25/168): gnutls-3.3.8-12.el7_3.3.8-12.el7_1.1.x86_64.drpm                                                               |  66 kB  00:00:00     
(26/168): grub2-2.02-0.16.el7.centos_2.02-0.17.0.1.el7.centos.4.x86_64.drpm                                              | 133 kB  00:00:00     
(27/168): iputils-20121221-6.el7_20121221-6.el7_1.1.x86_64.drpm                                                          | 110 kB  00:00:00     
(28/168): java-1.7.0-openjdk-1.7.0.75-2.5.4.2.el7_0_1.7.0.91-2.6.2.1.el7_1.x86_64.drpm                                   |  48 kB  00:00:00     
(29/168): java-1.7.0-openjdk-headless-1.7.0.75-2.5.4.2.el7_0_1.7.0.91-2.6.2.1.el7_1.x86_64.drpm                          | 3.3 MB  00:00:02     
(30/168): krb5-libs-1.12.2-14.el7_1.12.2-15.el7_1.x86_64.drpm                                                            | 114 kB  00:00:00     
(31/168): libXfont-1.4.7-2.el7_0_1.4.7-3.el7_1.x86_64.drpm                                                               |  25 kB  00:00:00     
(32/168): libblkid-2.23.2-21.el7_2.23.2-22.el7_1.1.x86_64.drpm                                                           |  84 kB  00:00:00     
(33/168): libgcrypt-1.5.3-12.el7_1.5.3-12.el7_1.1.x86_64.drpm                                                            |  31 kB  00:00:00     
(34/168): libmount-2.23.2-21.el7_2.23.2-22.el7_1.1.x86_64.drpm                                                           |  75 kB  00:00:00     
(35/168): gnutls-dane-3.3.8-12.el7_3.3.8-12.el7_1.1.x86_64.drpm                                                          |  18 kB  00:00:05     
(36/168): libnl3-3.2.21-8.el7_3.2.21-9.el7_1.x86_64.drpm                                                                 |  37 kB  00:00:00     
(37/168): libpcap-1.5.3-3.el7_0.1_1.5.3-4.el7_1.2.x86_64.drpm                                                            |  20 kB  00:00:00     
(38/168): libreport-2.1.11-21.el7.centos.0.4_2.1.11-23.el7.centos.0.1.x86_64.drpm                                        |  90 kB  00:00:00     
(39/168): libreport-python-2.1.11-21.el7.centos.0.4_2.1.11-23.el7.centos.0.1.x86_64.drpm                                 |  42 kB  00:00:00     
(40/168): libreport-web-2.1.11-21.el7.centos.0.4_2.1.11-23.el7.centos.0.1.x86_64.drpm                                    |  38 kB  00:00:00     
(41/168): libsmbclient-4.1.12-21.el7_1_4.1.12-24.el7_1.x86_64.drpm                                                       |  69 kB  00:00:00     
(42/168): libuser-python-0.60-5.el7_0.60-7.el7_1.x86_64.drpm                                                             |  35 kB  00:00:00     
(43/168): libuser-0.60-5.el7_0.60-7.el7_1.x86_64.drpm                                                                    | 122 kB  00:00:00     
(44/168): libvirt-daemon-driver-interface-1.2.8-16.el7_1.2.8-16.el7_1.5.x86_64.drpm                                      | 100 kB  00:00:00     
(45/168): libvirt-client-1.2.8-16.el7_1.2.8-16.el7_1.5.x86_64.drpm                                                       | 496 kB  00:00:00     
(46/168): libvirt-daemon-driver-nodedev-1.2.8-16.el7_1.2.8-16.el7_1.5.x86_64.drpm                                        | 100 kB  00:00:00     
(47/168): libvirt-daemon-driver-nwfilter-1.2.8-16.el7_1.2.8-16.el7_1.5.x86_64.drpm                                       | 101 kB  00:00:00     
(48/168): libvirt-daemon-driver-qemu-1.2.8-16.el7_1.2.8-16.el7_1.5.x86_64.drpm                                           | 221 kB  00:00:00     
(49/168): libvirt-daemon-driver-secret-1.2.8-16.el7_1.2.8-16.el7_1.5.x86_64.drpm                                         | 100 kB  00:00:00     
(50/168): libvirt-daemon-driver-storage-1.2.8-16.el7_1.2.8-16.el7_1.5.x86_64.drpm                                        | 215 kB  00:00:00     
(51/168): lvm2-libs-2.02.115-3.el7_2.02.115-3.el7_1.1.x86_64.drpm                                                        | 186 kB  00:00:00     
(52/168): mariadb-libs-5.5.41-2.el7_0_5.5.44-1.el7_1.x86_64.drpm                                                         |  64 kB  00:00:00     
(53/168): mesa-filesystem-10.2.7-5.20140910.el7_10.2.7-5.20140910.el7_1.1.x86_64.drpm                                    |  12 kB  00:00:00     
(54/168): mesa-dri-drivers-10.2.7-5.20140910.el7_10.2.7-5.20140910.el7_1.1.x86_64.drpm                                   | 222 kB  00:00:00     
(55/168): mesa-libEGL-10.2.7-5.20140910.el7_10.2.7-5.20140910.el7_1.1.x86_64.drpm                                        |  13 kB  00:00:00     
(56/168): mesa-libGL-10.2.7-5.20140910.el7_10.2.7-5.20140910.el7_1.1.x86_64.drpm                                         |  13 kB  00:00:00     
(57/168): mesa-libglapi-10.2.7-5.20140910.el7_10.2.7-5.20140910.el7_1.1.x86_64.drpm                                      |  12 kB  00:00:00     
(58/168): mesa-libxatracker-10.2.7-5.20140910.el7_10.2.7-5.20140910.el7_1.1.x86_64.drpm                                  | 435 kB  00:00:00     
(59/168): nspr-4.10.6-3.el7_4.10.8-2.el7_1.x86_64.drpm                                                                   |  33 kB  00:00:00     
(60/168): nss-3.16.2.3-5.el7_3.19.1-7.el7_1.2.x86_64.drpm                                                                | 283 kB  00:00:00     
(61/168): nss-softokn-3.16.2.3-9.el7_3.16.2.3-13.el7_1.x86_64.drpm                                                       |  95 kB  00:00:00     
(62/168): nss-softokn-freebl-3.16.2.3-9.el7_3.16.2.3-13.el7_1.x86_64.drpm                                                |  39 kB  00:00:00     
(63/168): nss-tools-3.16.2.3-5.el7_3.19.1-7.el7_1.2.x86_64.drpm                                                          | 355 kB  00:00:00     
(64/168): nss-util-3.16.2.3-2.el7_3.19.1-4.el7_1.x86_64.drpm                                                             |  24 kB  00:00:00     
(65/168): numactl-libs-2.0.9-4.el7_2.0.9-5.el7_1.x86_64.drpm                                                             |  14 kB  00:00:00     
(66/168): openldap-2.4.39-6.el7_2.4.39-7.el7.centos.x86_64.drpm                                                          |  74 kB  00:00:00     
(67/168): openssl-1.0.1e-42.el7_1.0.1e-42.el7.9.x86_64.drpm                                                              | 298 kB  00:00:00     
(68/168): openssl-libs-1.0.1e-42.el7_1.0.1e-42.el7.9.x86_64.drpm                                                         | 171 kB  00:00:00     
(69/168): pam-1.1.8-12.el7_1.1.8-12.el7_1.1.x86_64.drpm                                                                  | 205 kB  00:00:00     
(70/168): mesa-libgbm-10.2.7-5.20140910.el7_10.2.7-5.20140910.el7_1.1.x86_64.drpm                                        |  13 kB  00:00:05     
(71/168): python-2.7.5-16.el7_2.7.5-18.el7_1.1.x86_64.drpm                                                               |  58 kB  00:00:00     
(72/168): python-chardet-2.0.1-7.el7_2.2.1-1.el7_1.noarch.drpm                                                           |  42 kB  00:00:00     
(73/168): python-blivet-0.61.0.26-1.el7_0.61.0.27-1.el7_1.noarch.drpm                                                    | 159 kB  00:00:00     
(74/168): qemu-kvm-common-1.5.3-86.el7_1.5.3-86.el7_1.8.x86_64.drpm                                                      | 229 kB  00:00:00     
(75/168): python-libs-2.7.5-16.el7_2.7.5-18.el7_1.1.x86_64.drpm                                                          | 506 kB  00:00:01     
(76/168): rsyslog-7.4.7-7.el7_0_7.4.7-7.el7_1.1.x86_64.drpm                                                              | 219 kB  00:00:00     
(77/168): samba-common-4.1.12-21.el7_1_4.1.12-24.el7_1.x86_64.drpm                                                       | 191 kB  00:00:00     
(78/168): samba-libs-4.1.12-21.el7_1_4.1.12-24.el7_1.x86_64.drpm                                                         | 178 kB  00:00:00     
(79/168): setroubleshoot-3.2.17-3.el7_3.2.17-4.1.el7_1.x86_64.drpm                                                       |  75 kB  00:00:00     
(80/168): setroubleshoot-server-3.2.17-3.el7_3.2.17-4.1.el7_1.x86_64.drpm                                                | 104 kB  00:00:00     
(81/168): sos-3.2-15.el7.centos_3.2-15.el7.centos.8.noarch.drpm                                                          | 119 kB  00:00:00     
(82/168): spice-server-0.12.4-9.el7_0.12.4-9.el7_1.3.x86_64.drpm                                                         |  75 kB  00:00:00     
(83/168): sqlite-3.7.17-4.el7_3.7.17-6.el7_1.1.x86_64.drpm                                                               |  92 kB  00:00:00     
(84/168): systemtap-runtime-2.6-8.el7_2.6-10.el7_1.x86_64.drpm                                                           | 190 kB  00:00:00     
(85/168): trousers-0.3.11.2-3.el7_0.3.11.2-4.el7_1.x86_64.drpm                                                           | 137 kB  00:00:00     
(86/168): tzdata-2015a-1.el7_2015g-1.el7.noarch.drpm                                                                     | 294 kB  00:00:00     
(87/168): tzdata-java-2015a-1.el7_2015g-1.el7.noarch.drpm                                                                | 125 kB  00:00:00     
(88/168): unzip-6.0-13.el7_6.0-15.el7.x86_64.drpm                                                                        | 119 kB  00:00:00     
(89/168): util-linux-2.23.2-21.el7_2.23.2-22.el7_1.1.x86_64.drpm                                                         | 831 kB  00:00:01     
(90/168): xorg-x11-server-common-1.15.0-32.el7_1.15.0-33.el7_1.x86_64.drpm                                               |  23 kB  00:00:00     
(91/168): NetworkManager-adsl-1.0.0-16.git20150121.b4ea599c.el7_1.x86_64.rpm                                             | 122 kB  00:00:00     
(92/168): sssd-client-1.12.2-58.el7_1.12.2-58.el7_1.18.x86_64.drpm                                                       |  91 kB  00:00:05     
(93/168): NetworkManager-team-1.0.0-16.git20150121.b4ea599c.el7_1.x86_64.rpm                                             | 122 kB  00:00:00     
(94/168): NetworkManager-wifi-1.0.0-16.git20150121.b4ea599c.el7_1.x86_64.rpm                                             | 151 kB  00:00:00     
(95/168): NetworkManager-tui-1.0.0-16.git20150121.b4ea599c.el7_1.x86_64.rpm                                              | 203 kB  00:00:00     
(96/168): abrt-addon-kerneloops-2.1.11-22.el7.centos.0.1.x86_64.rpm                                                      | 100 kB  00:00:00     
(97/168): abrt-addon-pstoreoops-2.1.11-22.el7.centos.0.1.x86_64.rpm                                                      |  91 kB  00:00:00     
(98/168): abrt-addon-python-2.1.11-22.el7.centos.0.1.x86_64.rpm                                                          |  97 kB  00:00:00     
(99/168): abrt-addon-vmcore-2.1.11-22.el7.centos.0.1.x86_64.rpm                                                          | 101 kB  00:00:00     
(100/168): abrt-addon-xorg-2.1.11-22.el7.centos.0.1.x86_64.rpm                                                           |  92 kB  00:00:00     
(101/168): abrt-cli-2.1.11-22.el7.centos.0.1.x86_64.rpm                                                                  |  82 kB  00:00:00     
(102/168): abrt-console-notification-2.1.11-22.el7.centos.0.1.x86_64.rpm                                                 |  83 kB  00:00:00     
(103/168): abrt-dbus-2.1.11-22.el7.centos.0.1.x86_64.rpm                                                                 | 115 kB  00:00:00     
(104/168): abrt-desktop-2.1.11-22.el7.centos.0.1.x86_64.rpm                                                              |  82 kB  00:00:00     
(105/168): abrt-gui-libs-2.1.11-22.el7.centos.0.1.x86_64.rpm                                                             |  89 kB  00:00:00     
(106/168): abrt-libs-2.1.11-22.el7.centos.0.1.x86_64.rpm                                                                 | 102 kB  00:00:00     
(107/168): abrt-python-2.1.11-22.el7.centos.0.1.x86_64.rpm                                                               | 104 kB  00:00:00     
(108/168): abrt-retrace-client-2.1.11-22.el7.centos.0.1.x86_64.rpm                                                       | 117 kB  00:00:00     
(109/168): abrt-tui-2.1.11-22.el7.centos.0.1.x86_64.rpm                                                                  |  93 kB  00:00:00     
(110/168): bind-license-9.9.4-18.el7_1.5.noarch.rpm                                                                      |  80 kB  00:00:00     
(111/168): bind-utils-9.9.4-18.el7_1.5.x86_64.rpm                                                                        | 199 kB  00:00:00     
(112/168): cups-client-1.6.3-17.el7_1.1.x86_64.rpm                                                                       | 148 kB  00:00:00     
(113/168): cups-filesystem-1.6.3-17.el7_1.1.noarch.rpm                                                                   |  93 kB  00:00:00     
(114/168): device-mapper-1.02.93-3.el7_1.1.x86_64.rpm                                                                    | 209 kB  00:00:00     
(115/168): device-mapper-event-1.02.93-3.el7_1.1.x86_64.rpm                                                              | 159 kB  00:00:01     
(116/168): crash-7.0.9-5.el7_1.x86_64.rpm                                                                                | 2.6 MB  00:00:03     
(117/168): device-mapper-multipath-0.4.9-77.el7_1.2.x86_64.rpm                                                           | 113 kB  00:00:00     
(118/168): device-mapper-event-libs-1.02.93-3.el7_1.1.x86_64.rpm                                                         | 151 kB  00:00:00     
(119/168): dnsmasq-2.66-14.el7_1.x86_64.rpm                                                                              | 229 kB  00:00:00     
(120/168): fcoe-utils-1.0.29-9.1.el7_1.x86_64.rpm                                                                        | 116 kB  00:00:00     
(121/168): dracut-config-rescue-033-241.el7_1.5.x86_64.rpm                                                               |  45 kB  00:00:05     
(122/168): gnutls-utils-3.3.8-12.el7_1.1.x86_64.rpm                                                                      | 228 kB  00:00:00     
(123/168): grub2-tools-2.02-0.17.0.1.el7.centos.4.x86_64.rpm                                                             | 3.3 MB  00:00:02     
(124/168): hwdata-0.252-7.8.el7_1.x86_64.rpm                                                                             | 2.0 MB  00:00:01     
(125/168): irqbalance-1.0.7-2.el7_1.x86_64.rpm                                                                           |  43 kB  00:00:00     
(126/168): kexec-tools-2.0.7-19.el7_1.2.x86_64.rpm                                                                       | 297 kB  00:00:00     
(127/168): kpartx-0.4.9-77.el7_1.2.x86_64.rpm                                                                            |  56 kB  00:00:00     
(128/168): libcacard-1.5.3-86.el7_1.8.x86_64.rpm                                                                         | 213 kB  00:00:00     
(129/168): libnl3-cli-3.2.21-9.el7_1.x86_64.rpm                                                                          |  78 kB  00:00:00     
(130/168): libreport-anaconda-2.1.11-23.el7.centos.0.1.x86_64.rpm                                                        |  46 kB  00:00:00     
(131/168): libreport-centos-2.1.11-23.el7.centos.0.1.x86_64.rpm                                                          |  46 kB  00:00:00     
(132/168): libreport-cli-2.1.11-23.el7.centos.0.1.x86_64.rpm                                                             |  48 kB  00:00:00     
(133/168): libreport-filesystem-2.1.11-23.el7.centos.0.1.x86_64.rpm                                                      |  36 kB  00:00:00     
(134/168): libreport-gtk-2.1.11-23.el7.centos.0.1.x86_64.rpm                                                             |  95 kB  00:00:00     
(135/168): libreport-plugin-bugzilla-2.1.11-23.el7.centos.0.1.x86_64.rpm                                                 |  85 kB  00:00:00     
(136/168): libreport-plugin-mailx-2.1.11-23.el7.centos.0.1.x86_64.rpm                                                    |  55 kB  00:00:00     
(137/168): libreport-plugin-mantisbt-2.1.11-23.el7.centos.0.1.x86_64.rpm                                                 |  68 kB  00:00:00     
(138/168): libreport-plugin-reportuploader-2.1.11-23.el7.centos.0.1.x86_64.rpm                                           |  58 kB  00:00:00     
(139/168): libreport-plugin-rhtsupport-2.1.11-23.el7.centos.0.1.x86_64.rpm                                               |  63 kB  00:00:00     
(140/168): libreport-plugin-ureport-2.1.11-23.el7.centos.0.1.x86_64.rpm                                                  |  52 kB  00:00:00     
(141/168): libreport-rhel-anaconda-bugzilla-2.1.11-23.el7.centos.0.1.x86_64.rpm                                          |  38 kB  00:00:00     
(142/168): libreswan-3.15-5.el7_1.x86_64.rpm                                                                             | 1.2 MB  00:00:01     
(143/168): libsss_idmap-1.12.2-58.el7_1.18.x86_64.rpm                                                                    |  92 kB  00:00:00     
(144/168): libsss_nss_idmap-1.12.2-58.el7_1.18.x86_64.rpm                                                                |  91 kB  00:00:00     
(145/168): libuuid-2.23.2-22.el7_1.1.x86_64.rpm                                                                          |  73 kB  00:00:00     
(146/168): libvirt-daemon-1.2.8-16.el7_1.5.x86_64.rpm                                                                    | 541 kB  00:00:02     
(147/168): libvirt-daemon-driver-network-1.2.8-16.el7_1.5.x86_64.rpm                                                     | 269 kB  00:00:01     
(148/168): libvirt-daemon-kvm-1.2.8-16.el7_1.5.x86_64.rpm                                                                |  96 kB  00:00:00     
(149/168): libwbclient-4.1.12-24.el7_1.x86_64.rpm                                                                        |  90 kB  00:00:00     
(150/168): libusbx-1.0.20-5.el7.centos.x86_64.rpm                                                                        |  60 kB  00:00:05     
(151/168): firefox-38.4.0-1.el7.centos.x86_64.rpm                                                                        |  72 MB  00:00:24     
(152/168): mdadm-3.3.2-2.el7_1.1.x86_64.rpm                                                                              | 391 kB  00:00:00     
(153/168): lvm2-2.02.115-3.el7_1.1.x86_64.rpm                                                                            | 897 kB  00:00:02     
(154/168): nss-sysinit-3.19.1-7.el7_1.2.x86_64.rpm                                                                       |  52 kB  00:00:00     
(155/168): openssh-6.6.1p1-12.el7_1.x86_64.rpm                                                                           | 431 kB  00:00:00     
(156/168): openssh-clients-6.6.1p1-12.el7_1.x86_64.rpm                                                                   | 634 kB  00:00:01     
(157/168): openssh-server-6.6.1p1-12.el7_1.x86_64.rpm                                                                    | 432 kB  00:00:00     
(158/168): rsync-3.1.1-8.fc23.x86_64.rpm                                                                                 | 392 kB  00:00:00     
(159/168): lksctp-tools-1.0.13-3.el7.x86_64.rpm                                                                          |  87 kB  00:00:05     
(160/168): qemu-img-1.5.3-86.el7_1.8.x86_64.rpm                                                                          | 624 kB  00:00:01     
(161/168): rsyslog-mmjsonparse-7.4.7-7.el7_1.1.x86_64.rpm                                                                |  27 kB  00:00:00     
(162/168): scl-utils-20130529-17.el7_1.x86_64.rpm                                                                        |  24 kB  00:00:00     
(163/168): selinux-policy-3.13.1-23.el7_1.21.noarch.rpm                                                                  | 360 kB  00:00:00     
(164/168): qemu-kvm-1.5.3-86.el7_1.8.x86_64.rpm                                                                          | 1.8 MB  00:00:01     
(165/168): wpa_supplicant-2.0-17.el7_1.x86_64.rpm                                                                        | 803 kB  00:00:01     
(166/168): pcsc-lite-libs-1.8.8-5.el7.x86_64.rpm                                                                         |  34 kB  00:00:05     
(167/168): xorg-x11-server-Xorg-1.15.0-33.el7_1.x86_64.rpm                                                               | 1.3 MB  00:00:01     
(168/168): selinux-policy-targeted-3.13.1-23.el7_1.21.noarch.rpm                                                         | 3.9 MB  00:00:03     
Finishing delta rebuilds of 48 package(s) (66 M)

------------------------------------------------------------------------------------------------------------------------------------------------
Total                                                                                                           1.0 MB/s | 119 MB  00:01:55     
Running transaction check
Running transaction test
Transaction test succeeded
Running transaction
  Updating   : nspr-4.10.8-2.el7_1.x86_64                                                                                                 1/334 
  Updating   : nss-util-3.19.1-4.el7_1.x86_64                                                                                             2/334 
  Updating   : libuuid-2.23.2-22.el7_1.1.x86_64                                                                                           3/334 
  Updating   : libnl3-3.2.21-9.el7_1.x86_64                                                                                               4/334 
  Updating   : freetype-2.4.11-10.el7_1.1.x86_64                                                                                          5/334 
  Updating   : gdk-pixbuf2-2.28.2-5.el7_1.x86_64                                                                                          6/334 
  Updating   : numactl-libs-2.0.9-5.el7_1.x86_64                                                                                          7/334 
  Updating   : 1:gmp-6.0.0-12.el7_1.x86_64                                                                                                8/334 
  Updating   : 10:qemu-img-1.5.3-86.el7_1.8.x86_64                                                                                        9/334 
  Updating   : mesa-libglapi-10.2.7-5.20140910.el7_1.1.x86_64                                                                            10/334 
  Updating   : nss-softokn-freebl-3.16.2.3-13.el7_1.x86_64                                                                               11/334 
  Updating   : libreport-filesystem-2.1.11-23.el7.centos.0.1.x86_64                                                                      12/334 
  Updating   : sqlite-3.7.17-6.el7_1.1.x86_64                                                                                            13/334 
  Updating   : nss-softokn-3.16.2.3-13.el7_1.x86_64                                                                                      14/334 
  Updating   : krb5-libs-1.12.2-15.el7_1.x86_64                                                                                          15/334 
  Updating   : 1:openssl-libs-1.0.1e-42.el7.9.x86_64                                                                                     16/334 
  Updating   : nss-tools-3.19.1-7.el7_1.2.x86_64                                                                                         17/334 
  Updating   : nss-3.19.1-7.el7_1.2.x86_64                                                                                               18/334 
  Updating   : libmount-2.23.2-22.el7_1.1.x86_64                                                                                         19/334 
  Updating   : coreutils-8.22-12.el7_1.2.x86_64                                                                                          20/334 
  Updating   : pam-1.1.8-12.el7_1.1.x86_64                                                                                               21/334 
  Updating   : openldap-2.4.39-7.el7.centos.x86_64                                                                                       22/334 
  Updating   : libblkid-2.23.2-22.el7_1.1.x86_64                                                                                         23/334 
  Updating   : libuser-0.60-7.el7_1.x86_64                                                                                               24/334 
  Updating   : util-linux-2.23.2-22.el7_1.1.x86_64                                                                                       25/334 
  Updating   : ca-certificates-2015.2.4-70.0.el7_1.noarch                                                                                26/334 
  Updating   : nss-sysinit-3.19.1-7.el7_1.2.x86_64                                                                                       27/334 
  Updating   : 7:device-mapper-libs-1.02.93-3.el7_1.1.x86_64                                                                             28/334 
  Updating   : 7:device-mapper-1.02.93-3.el7_1.1.x86_64                                                                                  29/334 
  Updating   : 1:cups-libs-1.6.3-17.el7_1.1.x86_64                                                                                       30/334 
  Updating   : 7:device-mapper-event-libs-1.02.93-3.el7_1.1.x86_64                                                                       31/334 
  Updating   : python-libs-2.7.5-18.el7_1.1.x86_64                                                                                       32/334 
  Updating   : python-2.7.5-18.el7_1.1.x86_64                                                                                            33/334 
  Updating   : libreport-2.1.11-23.el7.centos.0.1.x86_64                                                                                 34/334 
  Updating   : libreport-python-2.1.11-23.el7.centos.0.1.x86_64                                                                          35/334 
  Updating   : abrt-libs-2.1.11-22.el7.centos.0.1.x86_64                                                                                 36/334 
  Updating   : libreport-web-2.1.11-23.el7.centos.0.1.x86_64                                                                             37/334 
  Updating   : libreport-plugin-mantisbt-2.1.11-23.el7.centos.0.1.x86_64                                                                 38/334 
  Updating   : libwbclient-4.1.12-24.el7_1.x86_64                                                                                        39/334 
  Updating   : samba-libs-4.1.12-24.el7_1.x86_64                                                                                         40/334 
  Updating   : trousers-0.3.11.2-4.el7_1.x86_64                                                                                          41/334 
  Updating   : gnutls-3.3.8-12.el7_1.1.x86_64                                                                                            42/334 
  Updating   : libreport-centos-2.1.11-23.el7.centos.0.1.x86_64                                                                          43/334 
  Updating   : libreport-plugin-reportuploader-2.1.11-23.el7.centos.0.1.x86_64                                                           44/334 
  Updating   : libreport-gtk-2.1.11-23.el7.centos.0.1.x86_64                                                                             45/334 
  Updating   : libreport-plugin-bugzilla-2.1.11-23.el7.centos.0.1.x86_64                                                                 46/334 
  Updating   : kpartx-0.4.9-77.el7_1.2.x86_64                                                                                            47/334 
  Updating   : dracut-033-241.el7_1.5.x86_64                                                                                             48/334 
  Updating   : openssh-6.6.1p1-12.el7_1.x86_64                                                                                           49/334 
  Updating   : 1:NetworkManager-libnm-1.0.0-16.git20150121.b4ea599c.el7_1.x86_64                                                         50/334 
  Updating   : 1:wpa_supplicant-2.0-17.el7_1.x86_64                                                                                      51/334 
  Updating   : 32:bind-license-9.9.4-18.el7_1.5.noarch                                                                                   52/334 
  Updating   : libusbx-1.0.20-5.el7.centos.x86_64                                                                                        53/334 
  Updating   : dnsmasq-2.66-14.el7_1.x86_64                                                                                              54/334 
  Updating   : 1:NetworkManager-1.0.0-16.git20150121.b4ea599c.el7_1.x86_64                                                               55/334 
  Updating   : 32:bind-libs-9.9.4-18.el7_1.5.x86_64                                                                                      56/334 
  Updating   : gnutls-dane-3.3.8-12.el7_1.1.x86_64                                                                                       57/334 
  Updating   : gnutls-utils-3.3.8-12.el7_1.1.x86_64                                                                                      58/334 
  Updating   : libvirt-client-1.2.8-16.el7_1.5.x86_64                                                                                    59/334 
  Updating   : libvirt-daemon-1.2.8-16.el7_1.5.x86_64                                                                                    60/334 
  Updating   : libvirt-daemon-driver-network-1.2.8-16.el7_1.5.x86_64                                                                     61/334 
  Updating   : libvirt-daemon-driver-qemu-1.2.8-16.el7_1.5.x86_64                                                                        62/334 
  Updating   : libvirt-daemon-driver-secret-1.2.8-16.el7_1.5.x86_64                                                                      63/334 
  Updating   : libvirt-daemon-driver-nodedev-1.2.8-16.el7_1.5.x86_64                                                                     64/334 
  Updating   : libvirt-daemon-driver-interface-1.2.8-16.el7_1.5.x86_64                                                                   65/334 
  Updating   : samba-common-4.1.12-24.el7_1.x86_64                                                                                       66/334 
  Updating   : libreport-plugin-rhtsupport-2.1.11-23.el7.centos.0.1.x86_64                                                               67/334 
  Updating   : libreport-plugin-ureport-2.1.11-23.el7.centos.0.1.x86_64                                                                  68/334 
  Updating   : abrt-gui-libs-2.1.11-22.el7.centos.0.1.x86_64                                                                             69/334 
  Updating   : libreport-cli-2.1.11-23.el7.centos.0.1.x86_64                                                                             70/334 
  Updating   : setroubleshoot-server-3.2.17-4.1.el7_1.x86_64                                                                             71/334 
  Updating   : sos-3.2-15.el7.centos.8.noarch                                                                                            72/334 
  Updating   : abrt-python-2.1.11-22.el7.centos.0.1.x86_64                                                                               73/334 
  Updating   : abrt-2.1.11-22.el7.centos.0.1.x86_64                                                                                      74/334 
  Updating   : abrt-addon-kerneloops-2.1.11-22.el7.centos.0.1.x86_64                                                                     75/334 
  Updating   : abrt-addon-pstoreoops-2.1.11-22.el7.centos.0.1.x86_64                                                                     76/334 
  Updating   : abrt-addon-xorg-2.1.11-22.el7.centos.0.1.x86_64                                                                           77/334 
  Updating   : abrt-addon-python-2.1.11-22.el7.centos.0.1.x86_64                                                                         78/334 
  Updating   : abrt-retrace-client-2.1.11-22.el7.centos.0.1.x86_64                                                                       79/334 
  Updating   : abrt-addon-ccpp-2.1.11-22.el7.centos.0.1.x86_64                                                                           80/334 
  Updating   : abrt-tui-2.1.11-22.el7.centos.0.1.x86_64                                                                                  81/334 
  Updating   : abrt-dbus-2.1.11-22.el7.centos.0.1.x86_64                                                                                 82/334 
  Updating   : abrt-gui-2.1.11-22.el7.centos.0.1.x86_64                                                                                  83/334 
  Updating   : 7:device-mapper-event-1.02.93-3.el7_1.1.x86_64                                                                            84/334 
  Updating   : 7:lvm2-libs-2.02.115-3.el7_1.1.x86_64                                                                                     85/334 
  Updating   : 7:lvm2-2.02.115-3.el7_1.1.x86_64                                                                                          86/334 
  Updating   : libvirt-daemon-driver-storage-1.2.8-16.el7_1.5.x86_64                                                                     87/334 
  Updating   : 1:cups-client-1.6.3-17.el7_1.1.x86_64                                                                                     88/334 
  Updating   : device-mapper-multipath-libs-0.4.9-77.el7_1.2.x86_64                                                                      89/334 
  Updating   : device-mapper-multipath-0.4.9-77.el7_1.2.x86_64                                                                           90/334 
  Updating   : mdadm-3.3.2-2.el7_1.1.x86_64                                                                                              91/334 
  Updating   : selinux-policy-3.13.1-23.el7_1.21.noarch                                                                                  92/334 
  Updating   : binutils-2.23.52.0.1-30.el7_1.2.x86_64                                                                                    93/334 
  Updating   : 10:qemu-kvm-common-1.5.3-86.el7_1.8.x86_64                                                                                94/334 
  Updating   : centos-logos-70.0.6-3.el7.centos.noarch                                                                                   95/334 
  Updating   : 1:grub2-tools-2.02-0.17.0.1.el7.centos.4.x86_64                                                                           96/334 
  Updating   : spice-server-0.12.4-9.el7_1.3.x86_64                                                                                      97/334 
  Updating   : 10:qemu-kvm-1.5.3-86.el7_1.8.x86_64                                                                                       98/334 
  Updating   : iputils-20121221-6.el7_1.1.x86_64                                                                                         99/334 
  Updating   : dracut-network-033-241.el7_1.5.x86_64                                                                                    100/334 
  Updating   : kexec-tools-2.0.7-19.el7_1.2.x86_64                                                                                      101/334 
  Updating   : abrt-addon-vmcore-2.1.11-22.el7.centos.0.1.x86_64                                                                        102/334 
  Updating   : abrt-cli-2.1.11-22.el7.centos.0.1.x86_64                                                                                 103/334 
  Updating   : mesa-libgbm-10.2.7-5.20140910.el7_1.1.x86_64                                                                             104/334 
  Updating   : mesa-libGL-10.2.7-5.20140910.el7_1.1.x86_64                                                                              105/334 
  Updating   : libXfont-1.4.7-3.el7_1.x86_64                                                                                            106/334 
  Updating   : rsyslog-7.4.7-7.el7_1.1.x86_64                                                                                           107/334 
  Installing : lksctp-tools-1.0.13-3.el7.x86_64                                                                                         108/334 
  Updating   : libsss_idmap-1.12.2-58.el7_1.18.x86_64                                                                                   109/334 
  Updating   : mesa-filesystem-10.2.7-5.20140910.el7_1.1.x86_64                                                                         110/334 
  Installing : pcsc-lite-libs-1.8.8-5.el7.x86_64                                                                                        111/334 
  Updating   : libsss_nss_idmap-1.12.2-58.el7_1.18.x86_64                                                                               112/334 
  Updating   : xorg-x11-server-common-1.15.0-33.el7_1.x86_64                                                                            113/334 
  Updating   : tzdata-java-2015g-1.el7.noarch                                                                                           114/334 
  Updating   : 1:java-1.7.0-openjdk-1.7.0.91-2.6.2.1.el7_1.x86_64                                                                       115/334 
  Updating   : 1:java-1.7.0-openjdk-headless-1.7.0.91-2.6.2.1.el7_1.x86_64                                                              116/334 
warning: /usr/lib/jvm/java-1.7.0-openjdk-1.7.0.91-2.6.2.1.el7_1.x86_64/jre/lib/security/US_export_policy.jar created as /usr/lib/jvm/java-1.7.0-openjdk-1.7.0.91-2.6.2.1.el7_1.x86_64/jre/lib/security/US_export_policy.jar.rpmnew
warning: /usr/lib/jvm/java-1.7.0-openjdk-1.7.0.91-2.6.2.1.el7_1.x86_64/jre/lib/security/java.security created as /usr/lib/jvm/java-1.7.0-openjdk-1.7.0.91-2.6.2.1.el7_1.x86_64/jre/lib/security/java.security.rpmnew
warning: /usr/lib/jvm/java-1.7.0-openjdk-1.7.0.91-2.6.2.1.el7_1.x86_64/jre/lib/security/local_policy.jar created as /usr/lib/jvm/java-1.7.0-openjdk-1.7.0.91-2.6.2.1.el7_1.x86_64/jre/lib/security/local_policy.jar.rpmnew
  Updating   : 1:cups-filesystem-1.6.3-17.el7_1.1.noarch                                                                                117/334 
  Updating   : 14:libpcap-1.5.3-4.el7_1.2.x86_64                                                                                        118/334 
  Updating   : libvirt-daemon-driver-nwfilter-1.2.8-16.el7_1.5.x86_64                                                                   119/334 
  Updating   : libvirt-daemon-kvm-1.2.8-16.el7_1.5.x86_64                                                                               120/334 
  Updating   : 1:cups-1.6.3-17.el7_1.1.x86_64                                                                                           121/334 
  Updating   : xorg-x11-server-Xorg-1.15.0-33.el7_1.x86_64                                                                              122/334 
  Updating   : sssd-client-1.12.2-58.el7_1.18.x86_64                                                                                    123/334 
  Updating   : mesa-dri-drivers-10.2.7-5.20140910.el7_1.1.x86_64                                                                        124/334 
  Updating   : rsyslog-mmjsonparse-7.4.7-7.el7_1.1.x86_64                                                                               125/334 
  Updating   : mesa-libEGL-10.2.7-5.20140910.el7_1.1.x86_64                                                                             126/334 
  Updating   : abrt-console-notification-2.1.11-22.el7.centos.0.1.x86_64                                                                127/334 
  Updating   : abrt-desktop-2.1.11-22.el7.centos.0.1.x86_64                                                                             128/334 
  Updating   : 1:grub2-2.02-0.17.0.1.el7.centos.4.x86_64                                                                                129/334 
  Updating   : crash-7.0.9-5.el7_1.x86_64                                                                                               130/334 
  Updating   : selinux-policy-targeted-3.13.1-23.el7_1.21.noarch                                                                        131/334 
  Updating   : python-blivet-0.61.0.27-1.el7_1.noarch                                                                                   132/334 
  Updating   : fcoe-utils-1.0.29-9.1.el7_1.x86_64                                                                                       133/334 
  Updating   : setroubleshoot-3.2.17-4.1.el7_1.x86_64                                                                                   134/334 
  Updating   : libreport-anaconda-2.1.11-23.el7.centos.0.1.x86_64                                                                       135/334 
  Updating   : libsmbclient-4.1.12-24.el7_1.x86_64                                                                                      136/334 
  Updating   : 32:bind-utils-9.9.4-18.el7_1.5.x86_64                                                                                    137/334 
  Updating   : 1:NetworkManager-tui-1.0.0-16.git20150121.b4ea599c.el7_1.x86_64                                                          138/334 
  Updating   : 1:NetworkManager-adsl-1.0.0-16.git20150121.b4ea599c.el7_1.x86_64                                                         139/334 
  Updating   : 1:NetworkManager-wifi-1.0.0-16.git20150121.b4ea599c.el7_1.x86_64                                                         140/334 
  Updating   : 1:NetworkManager-team-1.0.0-16.git20150121.b4ea599c.el7_1.x86_64                                                         141/334 
  Updating   : 32:bind-libs-lite-9.9.4-18.el7_1.5.x86_64                                                                                142/334 
  Updating   : openssh-server-6.6.1p1-12.el7_1.x86_64                                                                                   143/334 
  Updating   : openssh-clients-6.6.1p1-12.el7_1.x86_64                                                                                  144/334 
  Updating   : dracut-config-rescue-033-241.el7_1.5.x86_64                                                                              145/334 
  Updating   : libreport-rhel-anaconda-bugzilla-2.1.11-23.el7.centos.0.1.x86_64                                                         146/334 
  Updating   : libreport-plugin-mailx-2.1.11-23.el7.centos.0.1.x86_64                                                                   147/334 
  Updating   : libuser-python-0.60-7.el7_1.x86_64                                                                                       148/334 
  Updating   : libreswan-3.15-5.el7_1.x86_64                                                                                            149/334 
  Updating   : python-chardet-2.2.1-1.el7_1.noarch                                                                                      150/334 
  Updating   : 1:openssl-1.0.1e-42.el7.9.x86_64                                                                                         151/334 
  Updating   : systemtap-runtime-2.6-10.el7_1.x86_64                                                                                    152/334 
  Updating   : 1:NetworkManager-glib-1.0.0-16.git20150121.b4ea599c.el7_1.x86_64                                                         153/334 
  Updating   : 10:libcacard-1.5.3-86.el7_1.8.x86_64                                                                                     154/334 
  Updating   : firefox-38.4.0-1.el7.centos.x86_64                                                                                       155/334 
  Updating   : freerdp-libs-1.0.2-5.el7_1.1.x86_64                                                                                      156/334 
  Updating   : 1:mariadb-libs-5.5.44-1.el7_1.x86_64                                                                                     157/334 
  Updating   : 2:irqbalance-1.0.7-2.el7_1.x86_64                                                                                        158/334 
  Updating   : clutter-1.14.4-12.el7_1.1.x86_64                                                                                         159/334 
  Updating   : libnl3-cli-3.2.21-9.el7_1.x86_64                                                                                         160/334 
  Updating   : scl-utils-20130529-17.el7_1.x86_64                                                                                       161/334 
  Updating   : tzdata-2015g-1.el7.noarch                                                                                                162/334 
  Updating   : flac-libs-1.3.0-5.el7_1.x86_64                                                                                           163/334 
  Updating   : mesa-libxatracker-10.2.7-5.20140910.el7_1.1.x86_64                                                                       164/334 
  Updating   : rsync-3.1.1-8.fc23.x86_64                                                                                                165/334 
  Updating   : libgcrypt-1.5.3-12.el7_1.1.x86_64                                                                                        166/334 
  Updating   : hwdata-0.252-7.8.el7_1.x86_64                                                                                            167/334 
  Updating   : unzip-6.0-15.el7.x86_64                                                                                                  168/334 
  Cleanup    : libreswan-3.12-5.el7.x86_64                                                                                              169/334 
  Cleanup    : abrt-desktop-2.1.11-19.el7.centos.0.3.x86_64                                                                             170/334 
  Cleanup    : firefox-31.4.0-1.el7.centos.x86_64                                                                                       171/334 
  Cleanup    : libvirt-daemon-kvm-1.2.8-16.el7.x86_64                                                                                   172/334 
  Cleanup    : 10:qemu-kvm-1.5.3-86.el7.x86_64                                                                                          173/334 
  Cleanup    : libvirt-daemon-driver-storage-1.2.8-16.el7.x86_64                                                                        174/334 
  Cleanup    : abrt-gui-2.1.11-19.el7.centos.0.3.x86_64                                                                                 175/334 
  Cleanup    : 1:cups-1.6.3-17.el7.x86_64                                                                                               176/334 
  Cleanup    : 1:NetworkManager-tui-1.0.0-14.git20150121.b4ea599c.el7.x86_64                                                            177/334 
  Cleanup    : 32:bind-utils-9.9.4-18.el7.x86_64                                                                                        178/334 
  Cleanup    : python-blivet-0.61.0.26-1.el7.noarch                                                                                     179/334 
  Cleanup    : setroubleshoot-3.2.17-3.el7.x86_64                                                                                       180/334 
  Cleanup    : 10:libcacard-1.5.3-86.el7.x86_64                                                                                         181/334 
  Cleanup    : 1:NetworkManager-glib-1.0.0-14.git20150121.b4ea599c.el7.x86_64                                                           182/334 
  Cleanup    : openssh-server-6.6.1p1-11.el7.x86_64                                                                                     183/334 
  Cleanup    : 1:cups-client-1.6.3-17.el7.x86_64                                                                                        184/334 
  Cleanup    : libvirt-daemon-driver-qemu-1.2.8-16.el7.x86_64                                                                           185/334 
  Cleanup    : libvirt-daemon-driver-network-1.2.8-16.el7.x86_64                                                                        186/334 
  Cleanup    : xorg-x11-server-Xorg-1.15.0-32.el7.x86_64                                                                                187/334 
  Cleanup    : systemtap-runtime-2.6-8.el7.x86_64                                                                                       188/334 
  Cleanup    : libreport-anaconda-2.1.11-21.el7.centos.0.4.x86_64                                                                       189/334 
  Cleanup    : libreport-gtk-2.1.11-21.el7.centos.0.4.x86_64                                                                            190/334 
  Cleanup    : 7:lvm2-2.02.115-3.el7.x86_64                                                                                             191/334 
  Cleanup    : 7:lvm2-libs-2.02.115-3.el7.x86_64                                                                                        192/334 
  Cleanup    : 1:java-1.7.0-openjdk-headless-1.7.0.75-2.5.4.2.el7_0.x86_64                                                              193/334 
  Cleanup    : 1:java-1.7.0-openjdk-1.7.0.75-2.5.4.2.el7_0.x86_64                                                                       194/334 
warning: file /usr/lib/jvm/java-1.7.0-openjdk-1.7.0.75-2.5.4.2.el7_0.x86_64/jre/lib/amd64/xawt/libmawt.so: remove failed: No such file or directory
warning: file /usr/lib/jvm/java-1.7.0-openjdk-1.7.0.75-2.5.4.2.el7_0.x86_64/jre/lib/amd64/libsplashscreen.so: remove failed: No such file or directory
warning: file /usr/lib/jvm/java-1.7.0-openjdk-1.7.0.75-2.5.4.2.el7_0.x86_64/jre/lib/amd64/libpulse-java.so: remove failed: No such file or directory
warning: file /usr/lib/jvm/java-1.7.0-openjdk-1.7.0.75-2.5.4.2.el7_0.x86_64/jre/lib/amd64/libjsoundalsa.so: remove failed: No such file or directory
  Cleanup    : 1:openssl-1.0.1e-42.el7.x86_64                                                                                           195/334 
  Cleanup    : sssd-client-1.12.2-58.el7.x86_64                                                                                         196/334 
  Cleanup    : openssh-clients-6.6.1p1-11.el7.x86_64                                                                                    197/334 
  Cleanup    : openssh-6.6.1p1-11.el7.x86_64                                                                                            198/334 
  Cleanup    : 7:device-mapper-event-1.02.93-3.el7.x86_64                                                                               199/334 
  Cleanup    : libreport-plugin-reportuploader-2.1.11-21.el7.centos.0.4.x86_64                                                          200/334 
  Cleanup    : libreport-plugin-rhtsupport-2.1.11-21.el7.centos.0.4.x86_64                                                              201/334 
  Cleanup    : setroubleshoot-server-3.2.17-3.el7.x86_64                                                                                202/334 
  Cleanup    : 32:bind-libs-9.9.4-18.el7.x86_64                                                                                         203/334 
  Cleanup    : abrt-dbus-2.1.11-19.el7.centos.0.3.x86_64                                                                                204/334 
  Cleanup    : libvirt-daemon-driver-nwfilter-1.2.8-16.el7.x86_64                                                                       205/334 
  Cleanup    : mesa-libEGL-10.2.7-5.20140910.el7.x86_64                                                                                 206/334 
  Cleanup    : 32:bind-libs-lite-9.9.4-18.el7.x86_64                                                                                    207/334 
  Cleanup    : libsmbclient-4.1.12-21.el7_1.x86_64                                                                                      208/334 
  Cleanup    : samba-common-4.1.12-21.el7_1.x86_64                                                                                      209/334 
  Cleanup    : samba-libs-4.1.12-21.el7_1.x86_64                                                                                        210/334 
  Cleanup    : libwbclient-4.1.12-21.el7_1.x86_64                                                                                       211/334 
  Cleanup    : selinux-policy-targeted-3.13.1-23.el7.noarch                                                                             212/334 
  Cleanup    : 1:grub2-2.02-0.16.el7.centos.x86_64                                                                                      213/334 
  Cleanup    : abrt-console-notification-2.1.11-19.el7.centos.0.3.x86_64                                                                214/334 
  Cleanup    : abrt-cli-2.1.11-19.el7.centos.0.3.x86_64                                                                                 215/334 
  Cleanup    : abrt-addon-vmcore-2.1.11-19.el7.centos.0.3.x86_64                                                                        216/334 
  Cleanup    : libreport-centos-2.1.11-21.el7.centos.0.4.x86_64                                                                         217/334 
  Cleanup    : libreport-rhel-anaconda-bugzilla-2.1.11-21.el7.centos.0.4.x86_64                                                         218/334 
  Cleanup    : abrt-addon-ccpp-2.1.11-19.el7.centos.0.3.x86_64                                                                          219/334 
  Cleanup    : abrt-retrace-client-2.1.11-19.el7.centos.0.3.x86_64                                                                      220/334 
  Cleanup    : abrt-addon-pstoreoops-2.1.11-19.el7.centos.0.3.x86_64                                                                    221/334 
  Cleanup    : abrt-tui-2.1.11-19.el7.centos.0.3.x86_64                                                                                 222/334 
  Cleanup    : abrt-addon-python-2.1.11-19.el7.centos.0.3.x86_64                                                                        223/334 
  Cleanup    : abrt-addon-kerneloops-2.1.11-19.el7.centos.0.3.x86_64                                                                    224/334 
  Cleanup    : libreport-plugin-bugzilla-2.1.11-21.el7.centos.0.4.x86_64                                                                225/334 
  Cleanup    : libreport-plugin-mantisbt-2.1.11-21.el7.centos.0.4.x86_64                                                                226/334 
  Cleanup    : kexec-tools-2.0.7-19.el7.x86_64                                                                                          227/334 
  Cleanup    : abrt-addon-xorg-2.1.11-19.el7.centos.0.3.x86_64                                                                          228/334 
  Cleanup    : abrt-2.1.11-19.el7.centos.0.3.x86_64                                                                                     229/334 
  Cleanup    : abrt-python-2.1.11-19.el7.centos.0.3.x86_64                                                                              230/334 
  Cleanup    : libreport-plugin-ureport-2.1.11-21.el7.centos.0.4.x86_64                                                                 231/334 
  Cleanup    : 1:grub2-tools-2.02-0.16.el7.centos.x86_64                                                                                232/334 
  Cleanup    : 1:cups-libs-1.6.3-17.el7.x86_64                                                                                          233/334 
  Cleanup    : dracut-network-033-240.el7.x86_64                                                                                        234/334 
  Cleanup    : mdadm-3.3.2-2.el7.x86_64                                                                                                 235/334 
  Cleanup    : abrt-gui-libs-2.1.11-19.el7.centos.0.3.x86_64                                                                            236/334 
  Cleanup    : 10:qemu-kvm-common-1.5.3-86.el7.x86_64                                                                                   237/334 
  Cleanup    : 1:NetworkManager-wifi-1.0.0-14.git20150121.b4ea599c.el7.x86_64                                                           238/334 
  Cleanup    : clutter-1.14.4-12.el7.x86_64                                                                                             239/334 
  Cleanup    : libuser-python-0.60-5.el7.x86_64                                                                                         240/334 
  Cleanup    : centos-logos-70.0.6-1.el7.centos.noarch                                                                                  241/334 
  Cleanup    : sos-3.2-15.el7.centos.noarch                                                                                             242/334 
  Cleanup    : selinux-policy-3.13.1-23.el7.noarch                                                                                      243/334 
  Cleanup    : python-chardet-2.0.1-7.el7.noarch                                                                                        244/334 
  Cleanup    : dracut-config-rescue-033-240.el7.x86_64                                                                                  245/334 
  Cleanup    : dracut-033-240.el7.x86_64                                                                                                246/334 
  Cleanup    : iputils-20121221-6.el7.x86_64                                                                                            247/334 
  Cleanup    : libreport-web-2.1.11-21.el7.centos.0.4.x86_64                                                                            248/334 
  Cleanup    : abrt-libs-2.1.11-19.el7.centos.0.3.x86_64                                                                                249/334 
  Cleanup    : libreport-cli-2.1.11-21.el7.centos.0.4.x86_64                                                                            250/334 
  Cleanup    : mesa-libgbm-10.2.7-5.20140910.el7.x86_64                                                                                 251/334 
  Cleanup    : 7:device-mapper-event-libs-1.02.93-3.el7.x86_64                                                                          252/334 
  Cleanup    : mesa-libGL-10.2.7-5.20140910.el7.x86_64                                                                                  253/334 
  Cleanup    : libXfont-1.4.7-2.el7_0.x86_64                                                                                            254/334 
  Cleanup    : 10:qemu-img-1.5.3-86.el7.x86_64                                                                                          255/334 
  Cleanup    : spice-server-0.12.4-9.el7.x86_64                                                                                         256/334 
  Cleanup    : libvirt-daemon-driver-interface-1.2.8-16.el7.x86_64                                                                      257/334 
  Cleanup    : libvirt-daemon-driver-nodedev-1.2.8-16.el7.x86_64                                                                        258/334 
  Cleanup    : libvirt-daemon-driver-secret-1.2.8-16.el7.x86_64                                                                         259/334 
  Cleanup    : libvirt-daemon-1.2.8-16.el7.x86_64                                                                                       260/334 
  Cleanup    : libvirt-client-1.2.8-16.el7.x86_64                                                                                       261/334 
  Cleanup    : gnutls-utils-3.3.8-12.el7.x86_64                                                                                         262/334 
  Cleanup    : gnutls-dane-3.3.8-12.el7.x86_64                                                                                          263/334 
  Cleanup    : gnutls-3.3.8-12.el7.x86_64                                                                                               264/334 
  Cleanup    : trousers-0.3.11.2-3.el7.x86_64                                                                                           265/334 
  Cleanup    : 1:NetworkManager-team-1.0.0-14.git20150121.b4ea599c.el7.x86_64                                                           266/334 
  Cleanup    : 1:NetworkManager-adsl-1.0.0-14.git20150121.b4ea599c.el7.x86_64                                                           267/334 
  Cleanup    : 1:NetworkManager-1.0.0-14.git20150121.b4ea599c.el7.x86_64                                                                268/334 
  Cleanup    : 1:NetworkManager-libnm-1.0.0-14.git20150121.b4ea599c.el7.x86_64                                                          269/334 
  Cleanup    : 1:wpa_supplicant-2.0-13.el7_0.x86_64                                                                                     270/334 
  Cleanup    : libreport-plugin-mailx-2.1.11-21.el7.centos.0.4.x86_64                                                                   271/334 
  Cleanup    : libreport-python-2.1.11-21.el7.centos.0.4.x86_64                                                                         272/334 
  Cleanup    : libreport-2.1.11-21.el7.centos.0.4.x86_64                                                                                273/334 
  Cleanup    : python-2.7.5-16.el7.x86_64                                                                                               274/334 
  Cleanup    : python-libs-2.7.5-16.el7.x86_64                                                                                          275/334 
  Cleanup    : fcoe-utils-1.0.29-9.el7.x86_64                                                                                           276/334 
  Cleanup    : device-mapper-multipath-0.4.9-77.el7.x86_64                                                                              277/334 
  Cleanup    : device-mapper-multipath-libs-0.4.9-77.el7.x86_64                                                                         278/334 
  Cleanup    : kpartx-0.4.9-77.el7.x86_64                                                                                               279/334 
  Cleanup    : 7:device-mapper-1.02.93-3.el7.x86_64                                                                                     280/334 
  Cleanup    : 7:device-mapper-libs-1.02.93-3.el7.x86_64                                                                                281/334 
  Cleanup    : 1:mariadb-libs-5.5.41-2.el7_0.x86_64                                                                                     282/334 
  Cleanup    : crash-7.0.9-4.el7.x86_64                                                                                                 283/334 
  Cleanup    : binutils-2.23.52.0.1-30.el7.x86_64                                                                                       284/334 
  Cleanup    : 2:irqbalance-1.0.7-1.el7.x86_64                                                                                          285/334 
  Cleanup    : rsyslog-mmjsonparse-7.4.7-7.el7_0.x86_64                                                                                 286/334 
  Cleanup    : rsyslog-7.4.7-7.el7_0.x86_64                                                                                             287/334 
  Cleanup    : libnl3-cli-3.2.21-8.el7.x86_64                                                                                           288/334 
  Cleanup    : freerdp-libs-1.0.2-5.el7.x86_64                                                                                          289/334 
  Cleanup    : krb5-libs-1.12.2-14.el7.x86_64                                                                                           290/334 
  Cleanup    : 1:openssl-libs-1.0.1e-42.el7.x86_64                                                                                      291/334 
  Cleanup    : libblkid-2.23.2-21.el7.x86_64                                                                                            292/334 
  Cleanup    : libmount-2.23.2-21.el7.x86_64                                                                                            293/334 
  Cleanup    : nss-sysinit-3.16.2.3-5.el7.x86_64                                                                                        294/334 
  Cleanup    : nss-3.16.2.3-5.el7.x86_64                                                                                                295/334 
  Cleanup    : nss-tools-3.16.2.3-5.el7.x86_64                                                                                          296/334 
  Cleanup    : openldap-2.4.39-6.el7.x86_64                                                                                             297/334 
  Cleanup    : libuser-0.60-5.el7.x86_64                                                                                                298/334 
  Cleanup    : pam-1.1.8-12.el7.x86_64                                                                                                  299/334 
  Cleanup    : util-linux-2.23.2-21.el7.x86_64                                                                                          300/334 
  Cleanup    : coreutils-8.22-11.el7.x86_64                                                                                             301/334 
  Cleanup    : nss-softokn-3.16.2.3-9.el7.x86_64                                                                                        302/334 
  Cleanup    : nss-util-3.16.2.3-2.el7.x86_64                                                                                           303/334 
  Cleanup    : mesa-dri-drivers-10.2.7-5.20140910.el7.x86_64                                                                            304/334 
  Cleanup    : mesa-filesystem-10.2.7-5.20140910.el7.x86_64                                                                             305/334 
  Cleanup    : ca-certificates-2014.1.98-72.el7.noarch                                                                                  306/334 
  Cleanup    : libreport-filesystem-2.1.11-21.el7.centos.0.4.x86_64                                                                     307/334 
  Cleanup    : 32:bind-license-9.9.4-18.el7.noarch                                                                                      308/334 
  Cleanup    : tzdata-java-2015a-1.el7.noarch                                                                                           309/334 
  Cleanup    : xorg-x11-server-common-1.15.0-32.el7.x86_64                                                                              310/334 
  Cleanup    : 1:cups-filesystem-1.6.3-17.el7.noarch                                                                                    311/334 
  Cleanup    : tzdata-2015a-1.el7.noarch                                                                                                312/334 
  Cleanup    : hwdata-0.252-7.5.el7.noarch                                                                                              313/334 
  Cleanup    : nspr-4.10.6-3.el7.x86_64                                                                                                 314/334 
  Cleanup    : sqlite-3.7.17-4.el7.x86_64                                                                                               315/334 
  Cleanup    : nss-softokn-freebl-3.16.2.3-9.el7.x86_64                                                                                 316/334 
  Cleanup    : 1:gmp-6.0.0-11.el7.x86_64                                                                                                317/334 
  Cleanup    : libuuid-2.23.2-21.el7.x86_64                                                                                             318/334 
  Cleanup    : libnl3-3.2.21-8.el7.x86_64                                                                                               319/334 
  Cleanup    : numactl-libs-2.0.9-4.el7.x86_64                                                                                          320/334 
  Cleanup    : dnsmasq-2.66-12.el7.x86_64                                                                                               321/334 
  Cleanup    : freetype-2.4.11-9.el7.x86_64                                                                                             322/334 
  Cleanup    : mesa-libglapi-10.2.7-5.20140910.el7.x86_64                                                                               323/334 
  Cleanup    : gdk-pixbuf2-2.28.2-4.el7.x86_64                                                                                          324/334 
  Cleanup    : 14:libpcap-1.5.3-3.el7_0.1.x86_64                                                                                        325/334 
  Cleanup    : libsss_idmap-1.12.2-58.el7.x86_64                                                                                        326/334 
  Cleanup    : libsss_nss_idmap-1.12.2-58.el7.x86_64                                                                                    327/334 
  Cleanup    : libusbx-1.0.15-4.el7.x86_64                                                                                              328/334 
  Cleanup    : scl-utils-20130529-9.el7_0.x86_64                                                                                        329/334 
  Cleanup    : flac-libs-1.3.0-4.el7.x86_64                                                                                             330/334 
  Cleanup    : mesa-libxatracker-10.2.7-5.20140910.el7.x86_64                                                                           331/334 
  Cleanup    : rsync-3.0.9-15.el7.x86_64                                                                                                332/334 
  Cleanup    : libgcrypt-1.5.3-12.el7.x86_64                                                                                            333/334 
  Cleanup    : unzip-6.0-13.el7.x86_64                                                                                                  334/334 
  Verifying  : 10:qemu-kvm-1.5.3-86.el7_1.8.x86_64                                                                                        1/334 
  Verifying  : gnutls-3.3.8-12.el7_1.1.x86_64                                                                                             2/334 
  Verifying  : libvirt-daemon-driver-storage-1.2.8-16.el7_1.5.x86_64                                                                      3/334 
  Verifying  : samba-common-4.1.12-24.el7_1.x86_64                                                                                        4/334 
  Verifying  : systemtap-runtime-2.6-10.el7_1.x86_64                                                                                      5/334 
  Verifying  : libuser-python-0.60-7.el7_1.x86_64                                                                                         6/334 
  Verifying  : libvirt-daemon-driver-qemu-1.2.8-16.el7_1.5.x86_64                                                                         7/334 
  Verifying  : openldap-2.4.39-7.el7.centos.x86_64                                                                                        8/334 
  Verifying  : mesa-dri-drivers-10.2.7-5.20140910.el7_1.1.x86_64                                                                          9/334 
  Verifying  : freerdp-libs-1.0.2-5.el7_1.1.x86_64                                                                                       10/334 
  Verifying  : trousers-0.3.11.2-4.el7_1.x86_64                                                                                          11/334 
  Verifying  : libnl3-cli-3.2.21-9.el7_1.x86_64                                                                                          12/334 
  Verifying  : rsyslog-mmjsonparse-7.4.7-7.el7_1.1.x86_64                                                                                13/334 
  Verifying  : libuser-0.60-7.el7_1.x86_64                                                                                               14/334 
  Verifying  : mdadm-3.3.2-2.el7_1.1.x86_64                                                                                              15/334 
  Verifying  : openssh-server-6.6.1p1-12.el7_1.x86_64                                                                                    16/334 
  Verifying  : setroubleshoot-server-3.2.17-4.1.el7_1.x86_64                                                                             17/334 
  Verifying  : 1:NetworkManager-glib-1.0.0-16.git20150121.b4ea599c.el7_1.x86_64                                                          18/334 
  Verifying  : 1:gmp-6.0.0-12.el7_1.x86_64                                                                                               19/334 
  Verifying  : abrt-addon-vmcore-2.1.11-22.el7.centos.0.1.x86_64                                                                         20/334 
  Verifying  : libreport-python-2.1.11-23.el7.centos.0.1.x86_64                                                                          21/334 
  Verifying  : xorg-x11-server-Xorg-1.15.0-33.el7_1.x86_64                                                                               22/334 
  Verifying  : libvirt-daemon-driver-secret-1.2.8-16.el7_1.5.x86_64                                                                      23/334 
  Verifying  : abrt-retrace-client-2.1.11-22.el7.centos.0.1.x86_64                                                                       24/334 
  Verifying  : libreswan-3.15-5.el7_1.x86_64                                                                                             25/334 
  Verifying  : 2:irqbalance-1.0.7-2.el7_1.x86_64                                                                                         26/334 
  Verifying  : selinux-policy-3.13.1-23.el7_1.21.noarch                                                                                  27/334 
  Verifying  : 10:libcacard-1.5.3-86.el7_1.8.x86_64                                                                                      28/334 
  Verifying  : coreutils-8.22-12.el7_1.2.x86_64                                                                                          29/334 
  Verifying  : unzip-6.0-15.el7.x86_64                                                                                                   30/334 
  Verifying  : dnsmasq-2.66-14.el7_1.x86_64                                                                                              31/334 
  Verifying  : device-mapper-multipath-libs-0.4.9-77.el7_1.2.x86_64                                                                      32/334 
  Verifying  : crash-7.0.9-5.el7_1.x86_64                                                                                                33/334 
  Verifying  : python-libs-2.7.5-18.el7_1.1.x86_64                                                                                       34/334 
  Verifying  : abrt-desktop-2.1.11-22.el7.centos.0.1.x86_64                                                                              35/334 
  Verifying  : abrt-addon-xorg-2.1.11-22.el7.centos.0.1.x86_64                                                                           36/334 
  Verifying  : hwdata-0.252-7.8.el7_1.x86_64                                                                                             37/334 
  Verifying  : 7:device-mapper-event-1.02.93-3.el7_1.1.x86_64                                                                            38/334 
  Verifying  : 32:bind-libs-9.9.4-18.el7_1.5.x86_64                                                                                      39/334 
  Verifying  : clutter-1.14.4-12.el7_1.1.x86_64                                                                                          40/334 
  Verifying  : 14:libpcap-1.5.3-4.el7_1.2.x86_64                                                                                         41/334 
  Verifying  : nss-util-3.19.1-4.el7_1.x86_64                                                                                            42/334 
  Verifying  : libvirt-daemon-driver-nwfilter-1.2.8-16.el7_1.5.x86_64                                                                    43/334 
  Verifying  : 1:cups-filesystem-1.6.3-17.el7_1.1.noarch                                                                                 44/334 
  Verifying  : openssh-clients-6.6.1p1-12.el7_1.x86_64                                                                                   45/334 
  Verifying  : libreport-gtk-2.1.11-23.el7.centos.0.1.x86_64                                                                             46/334 
  Verifying  : nss-softokn-3.16.2.3-13.el7_1.x86_64                                                                                      47/334 
  Verifying  : gdk-pixbuf2-2.28.2-5.el7_1.x86_64                                                                                         48/334 
  Verifying  : tzdata-java-2015g-1.el7.noarch                                                                                            49/334 
  Verifying  : 10:qemu-img-1.5.3-86.el7_1.8.x86_64                                                                                       50/334 
  Verifying  : libreport-plugin-rhtsupport-2.1.11-23.el7.centos.0.1.x86_64                                                               51/334 
  Verifying  : samba-libs-4.1.12-24.el7_1.x86_64                                                                                         52/334 
  Verifying  : 1:mariadb-libs-5.5.44-1.el7_1.x86_64                                                                                      53/334 
  Verifying  : 1:NetworkManager-1.0.0-16.git20150121.b4ea599c.el7_1.x86_64                                                               54/334 
  Verifying  : 32:bind-libs-lite-9.9.4-18.el7_1.5.x86_64                                                                                 55/334 
  Verifying  : pam-1.1.8-12.el7_1.1.x86_64                                                                                               56/334 
  Verifying  : 1:NetworkManager-tui-1.0.0-16.git20150121.b4ea599c.el7_1.x86_64                                                           57/334 
  Verifying  : abrt-tui-2.1.11-22.el7.centos.0.1.x86_64                                                                                  58/334 
  Verifying  : krb5-libs-1.12.2-15.el7_1.x86_64                                                                                          59/334 
  Verifying  : spice-server-0.12.4-9.el7_1.3.x86_64                                                                                      60/334 
  Verifying  : abrt-gui-2.1.11-22.el7.centos.0.1.x86_64                                                                                  61/334 
  Verifying  : libreport-plugin-reportuploader-2.1.11-23.el7.centos.0.1.x86_64                                                           62/334 
  Verifying  : sssd-client-1.12.2-58.el7_1.18.x86_64                                                                                     63/334 
  Verifying  : libvirt-daemon-driver-nodedev-1.2.8-16.el7_1.5.x86_64                                                                     64/334 
  Verifying  : mesa-libgbm-10.2.7-5.20140910.el7_1.1.x86_64                                                                              65/334 
  Verifying  : libvirt-daemon-1.2.8-16.el7_1.5.x86_64                                                                                    66/334 
  Verifying  : libwbclient-4.1.12-24.el7_1.x86_64                                                                                        67/334 
  Verifying  : libnl3-3.2.21-9.el7_1.x86_64                                                                                              68/334 
  Verifying  : libXfont-1.4.7-3.el7_1.x86_64                                                                                             69/334 
  Verifying  : nss-tools-3.19.1-7.el7_1.2.x86_64                                                                                         70/334 
  Verifying  : setroubleshoot-3.2.17-4.1.el7_1.x86_64                                                                                    71/334 
  Verifying  : 1:NetworkManager-libnm-1.0.0-16.git20150121.b4ea599c.el7_1.x86_64                                                         72/334 
  Verifying  : dracut-config-rescue-033-241.el7_1.5.x86_64                                                                               73/334 
  Verifying  : 1:cups-client-1.6.3-17.el7_1.1.x86_64                                                                                     74/334 
  Verifying  : libreport-plugin-mantisbt-2.1.11-23.el7.centos.0.1.x86_64                                                                 75/334 
  Verifying  : 1:grub2-tools-2.02-0.17.0.1.el7.centos.4.x86_64                                                                           76/334 
  Verifying  : iputils-20121221-6.el7_1.1.x86_64                                                                                         77/334 
  Verifying  : libreport-rhel-anaconda-bugzilla-2.1.11-23.el7.centos.0.1.x86_64                                                          78/334 
  Verifying  : python-2.7.5-18.el7_1.1.x86_64                                                                                            79/334 
  Verifying  : mesa-libglapi-10.2.7-5.20140910.el7_1.1.x86_64                                                                            80/334 
  Verifying  : 7:lvm2-libs-2.02.115-3.el7_1.1.x86_64                                                                                     81/334 
  Verifying  : libusbx-1.0.20-5.el7.centos.x86_64                                                                                        82/334 
  Verifying  : abrt-addon-pstoreoops-2.1.11-22.el7.centos.0.1.x86_64                                                                     83/334 
  Verifying  : freetype-2.4.11-10.el7_1.1.x86_64                                                                                         84/334 
  Verifying  : kpartx-0.4.9-77.el7_1.2.x86_64                                                                                            85/334 
  Verifying  : 7:device-mapper-1.02.93-3.el7_1.1.x86_64                                                                                  86/334 
  Verifying  : abrt-addon-kerneloops-2.1.11-22.el7.centos.0.1.x86_64                                                                     87/334 
  Verifying  : ca-certificates-2015.2.4-70.0.el7_1.noarch                                                                                88/334 
  Verifying  : dracut-033-241.el7_1.5.x86_64                                                                                             89/334 
  Verifying  : abrt-dbus-2.1.11-22.el7.centos.0.1.x86_64                                                                                 90/334 
  Verifying  : 1:java-1.7.0-openjdk-1.7.0.91-2.6.2.1.el7_1.x86_64                                                                        91/334 
  Verifying  : xorg-x11-server-common-1.15.0-33.el7_1.x86_64                                                                             92/334 
  Verifying  : abrt-2.1.11-22.el7.centos.0.1.x86_64                                                                                      93/334 
  Verifying  : abrt-python-2.1.11-22.el7.centos.0.1.x86_64                                                                               94/334 
  Verifying  : abrt-addon-ccpp-2.1.11-22.el7.centos.0.1.x86_64                                                                           95/334 
  Verifying  : numactl-libs-2.0.9-5.el7_1.x86_64                                                                                         96/334 
  Verifying  : libgcrypt-1.5.3-12.el7_1.1.x86_64                                                                                         97/334 
  Verifying  : dracut-network-033-241.el7_1.5.x86_64                                                                                     98/334 
  Verifying  : fcoe-utils-1.0.29-9.1.el7_1.x86_64                                                                                        99/334 
  Verifying  : gnutls-utils-3.3.8-12.el7_1.1.x86_64                                                                                     100/334 
  Verifying  : libvirt-daemon-driver-network-1.2.8-16.el7_1.5.x86_64                                                                    101/334 
  Verifying  : libvirt-client-1.2.8-16.el7_1.5.x86_64                                                                                   102/334 
  Verifying  : 32:bind-utils-9.9.4-18.el7_1.5.x86_64                                                                                    103/334 
  Verifying  : sos-3.2-15.el7.centos.8.noarch                                                                                           104/334 
  Verifying  : libsss_nss_idmap-1.12.2-58.el7_1.18.x86_64                                                                               105/334 
  Verifying  : mesa-libEGL-10.2.7-5.20140910.el7_1.1.x86_64                                                                             106/334 
  Verifying  : binutils-2.23.52.0.1-30.el7_1.2.x86_64                                                                                   107/334 
  Verifying  : 32:bind-license-9.9.4-18.el7_1.5.noarch                                                                                  108/334 
  Verifying  : libvirt-daemon-driver-interface-1.2.8-16.el7_1.5.x86_64                                                                  109/334 
  Verifying  : 1:java-1.7.0-openjdk-headless-1.7.0.91-2.6.2.1.el7_1.x86_64                                                              110/334 
  Verifying  : 1:openssl-libs-1.0.1e-42.el7.9.x86_64                                                                                    111/334 
  Verifying  : libreport-plugin-ureport-2.1.11-23.el7.centos.0.1.x86_64                                                                 112/334 
  Verifying  : abrt-gui-libs-2.1.11-22.el7.centos.0.1.x86_64                                                                            113/334 
  Verifying  : 7:device-mapper-event-libs-1.02.93-3.el7_1.1.x86_64                                                                      114/334 
  Verifying  : pcsc-lite-libs-1.8.8-5.el7.x86_64                                                                                        115/334 
  Verifying  : kexec-tools-2.0.7-19.el7_1.2.x86_64                                                                                      116/334 
  Verifying  : rsync-3.1.1-8.fc23.x86_64                                                                                                117/334 
  Verifying  : abrt-console-notification-2.1.11-22.el7.centos.0.1.x86_64                                                                118/334 
  Verifying  : libreport-cli-2.1.11-23.el7.centos.0.1.x86_64                                                                            119/334 
  Verifying  : mesa-libxatracker-10.2.7-5.20140910.el7_1.1.x86_64                                                                       120/334 
  Verifying  : libreport-plugin-mailx-2.1.11-23.el7.centos.0.1.x86_64                                                                   121/334 
  Verifying  : mesa-filesystem-10.2.7-5.20140910.el7_1.1.x86_64                                                                         122/334 
  Verifying  : 1:wpa_supplicant-2.0-17.el7_1.x86_64                                                                                     123/334 
  Verifying  : 7:device-mapper-libs-1.02.93-3.el7_1.1.x86_64                                                                            124/334 
  Verifying  : libvirt-daemon-kvm-1.2.8-16.el7_1.5.x86_64                                                                               125/334 
  Verifying  : 1:grub2-2.02-0.17.0.1.el7.centos.4.x86_64                                                                                126/334 
  Verifying  : libmount-2.23.2-22.el7_1.1.x86_64                                                                                        127/334 
  Verifying  : libuuid-2.23.2-22.el7_1.1.x86_64                                                                                         128/334 
  Verifying  : libreport-centos-2.1.11-23.el7.centos.0.1.x86_64                                                                         129/334 
  Verifying  : firefox-38.4.0-1.el7.centos.x86_64                                                                                       130/334 
  Verifying  : abrt-cli-2.1.11-22.el7.centos.0.1.x86_64                                                                                 131/334 
  Verifying  : 10:qemu-kvm-common-1.5.3-86.el7_1.8.x86_64                                                                               132/334 
  Verifying  : 1:cups-1.6.3-17.el7_1.1.x86_64                                                                                           133/334 
  Verifying  : sqlite-3.7.17-6.el7_1.1.x86_64                                                                                           134/334 
  Verifying  : 7:lvm2-2.02.115-3.el7_1.1.x86_64                                                                                         135/334 
  Verifying  : flac-libs-1.3.0-5.el7_1.x86_64                                                                                           136/334 
  Verifying  : libreport-filesystem-2.1.11-23.el7.centos.0.1.x86_64                                                                     137/334 
  Verifying  : 1:NetworkManager-adsl-1.0.0-16.git20150121.b4ea599c.el7_1.x86_64                                                         138/334 
  Verifying  : libreport-anaconda-2.1.11-23.el7.centos.0.1.x86_64                                                                       139/334 
  Verifying  : rsyslog-7.4.7-7.el7_1.1.x86_64                                                                                           140/334 
  Verifying  : 1:cups-libs-1.6.3-17.el7_1.1.x86_64                                                                                      141/334 
  Verifying  : nss-sysinit-3.19.1-7.el7_1.2.x86_64                                                                                      142/334 
  Verifying  : libreport-2.1.11-23.el7.centos.0.1.x86_64                                                                                143/334 
  Verifying  : selinux-policy-targeted-3.13.1-23.el7_1.21.noarch                                                                        144/334 
  Verifying  : centos-logos-70.0.6-3.el7.centos.noarch                                                                                  145/334 
  Verifying  : nss-3.19.1-7.el7_1.2.x86_64                                                                                              146/334 
  Verifying  : gnutls-dane-3.3.8-12.el7_1.1.x86_64                                                                                      147/334 
  Verifying  : nspr-4.10.8-2.el7_1.x86_64                                                                                               148/334 
  Verifying  : openssh-6.6.1p1-12.el7_1.x86_64                                                                                          149/334 
  Verifying  : tzdata-2015g-1.el7.noarch                                                                                                150/334 
  Verifying  : abrt-libs-2.1.11-22.el7.centos.0.1.x86_64                                                                                151/334 
  Verifying  : util-linux-2.23.2-22.el7_1.1.x86_64                                                                                      152/334 
  Verifying  : libreport-web-2.1.11-23.el7.centos.0.1.x86_64                                                                            153/334 
  Verifying  : libsmbclient-4.1.12-24.el7_1.x86_64                                                                                      154/334 
  Verifying  : libsss_idmap-1.12.2-58.el7_1.18.x86_64                                                                                   155/334 
  Verifying  : abrt-addon-python-2.1.11-22.el7.centos.0.1.x86_64                                                                        156/334 
  Verifying  : 1:NetworkManager-wifi-1.0.0-16.git20150121.b4ea599c.el7_1.x86_64                                                         157/334 
  Verifying  : 1:NetworkManager-team-1.0.0-16.git20150121.b4ea599c.el7_1.x86_64                                                         158/334 
  Verifying  : mesa-libGL-10.2.7-5.20140910.el7_1.1.x86_64                                                                              159/334 
  Verifying  : python-chardet-2.2.1-1.el7_1.noarch                                                                                      160/334 
  Verifying  : device-mapper-multipath-0.4.9-77.el7_1.2.x86_64                                                                          161/334 
  Verifying  : nss-softokn-freebl-3.16.2.3-13.el7_1.x86_64                                                                              162/334 
  Verifying  : lksctp-tools-1.0.13-3.el7.x86_64                                                                                         163/334 
  Verifying  : python-blivet-0.61.0.27-1.el7_1.noarch                                                                                   164/334 
  Verifying  : scl-utils-20130529-17.el7_1.x86_64                                                                                       165/334 
  Verifying  : 1:openssl-1.0.1e-42.el7.9.x86_64                                                                                         166/334 
  Verifying  : libreport-plugin-bugzilla-2.1.11-23.el7.centos.0.1.x86_64                                                                167/334 
  Verifying  : libblkid-2.23.2-22.el7_1.1.x86_64                                                                                        168/334 
  Verifying  : fcoe-utils-1.0.29-9.el7.x86_64                                                                                           169/334 
  Verifying  : libXfont-1.4.7-2.el7_0.x86_64                                                                                            170/334 
  Verifying  : libusbx-1.0.15-4.el7.x86_64                                                                                              171/334 
  Verifying  : 32:bind-license-9.9.4-18.el7.noarch                                                                                      172/334 
  Verifying  : samba-libs-4.1.12-21.el7_1.x86_64                                                                                        173/334 
  Verifying  : 1:cups-libs-1.6.3-17.el7.x86_64                                                                                          174/334 
  Verifying  : 7:device-mapper-event-1.02.93-3.el7.x86_64                                                                               175/334 
  Verifying  : numactl-libs-2.0.9-4.el7.x86_64                                                                                          176/334 
  Verifying  : nspr-4.10.6-3.el7.x86_64                                                                                                 177/334 
  Verifying  : 7:device-mapper-event-libs-1.02.93-3.el7.x86_64                                                                          178/334 
  Verifying  : abrt-addon-pstoreoops-2.1.11-19.el7.centos.0.3.x86_64                                                                    179/334 
  Verifying  : trousers-0.3.11.2-3.el7.x86_64                                                                                           180/334 
  Verifying  : libuser-python-0.60-5.el7.x86_64                                                                                         181/334 
  Verifying  : abrt-python-2.1.11-19.el7.centos.0.3.x86_64                                                                              182/334 
  Verifying  : spice-server-0.12.4-9.el7.x86_64                                                                                         183/334 
  Verifying  : 1:NetworkManager-team-1.0.0-14.git20150121.b4ea599c.el7.x86_64                                                           184/334 
  Verifying  : abrt-addon-ccpp-2.1.11-19.el7.centos.0.3.x86_64                                                                          185/334 
  Verifying  : selinux-policy-targeted-3.13.1-23.el7.noarch                                                                             186/334 
  Verifying  : libvirt-client-1.2.8-16.el7.x86_64                                                                                       187/334 
  Verifying  : libreport-filesystem-2.1.11-21.el7.centos.0.4.x86_64                                                                     188/334 
  Verifying  : libvirt-daemon-kvm-1.2.8-16.el7.x86_64                                                                                   189/334 
  Verifying  : 1:java-1.7.0-openjdk-1.7.0.75-2.5.4.2.el7_0.x86_64                                                                       190/334 
  Verifying  : libvirt-daemon-driver-nwfilter-1.2.8-16.el7.x86_64                                                                       191/334 
  Verifying  : gnutls-3.3.8-12.el7.x86_64                                                                                               192/334 
  Verifying  : dracut-config-rescue-033-240.el7.x86_64                                                                                  193/334 
  Verifying  : mesa-dri-drivers-10.2.7-5.20140910.el7.x86_64                                                                            194/334 
  Verifying  : sos-3.2-15.el7.centos.noarch                                                                                             195/334 
  Verifying  : scl-utils-20130529-9.el7_0.x86_64                                                                                        196/334 
  Verifying  : abrt-gui-2.1.11-19.el7.centos.0.3.x86_64                                                                                 197/334 
  Verifying  : 1:cups-client-1.6.3-17.el7.x86_64                                                                                        198/334 
  Verifying  : abrt-addon-vmcore-2.1.11-19.el7.centos.0.3.x86_64                                                                        199/334 
  Verifying  : abrt-gui-libs-2.1.11-19.el7.centos.0.3.x86_64                                                                            200/334 
  Verifying  : python-blivet-0.61.0.26-1.el7.noarch                                                                                     201/334 
  Verifying  : abrt-addon-python-2.1.11-19.el7.centos.0.3.x86_64                                                                        202/334 
  Verifying  : libvirt-daemon-driver-qemu-1.2.8-16.el7.x86_64                                                                           203/334 
  Verifying  : gnutls-dane-3.3.8-12.el7.x86_64                                                                                          204/334 
  Verifying  : nss-3.16.2.3-5.el7.x86_64                                                                                                205/334 
  Verifying  : hwdata-0.252-7.5.el7.noarch                                                                                              206/334 
  Verifying  : binutils-2.23.52.0.1-30.el7.x86_64                                                                                       207/334 
  Verifying  : setroubleshoot-3.2.17-3.el7.x86_64                                                                                       208/334 
  Verifying  : openssh-6.6.1p1-11.el7.x86_64                                                                                            209/334 
  Verifying  : gdk-pixbuf2-2.28.2-4.el7.x86_64                                                                                          210/334 
  Verifying  : 7:lvm2-2.02.115-3.el7.x86_64                                                                                             211/334 
  Verifying  : xorg-x11-server-Xorg-1.15.0-32.el7.x86_64                                                                                212/334 
  Verifying  : sssd-client-1.12.2-58.el7.x86_64                                                                                         213/334 
  Verifying  : libvirt-daemon-driver-interface-1.2.8-16.el7.x86_64                                                                      214/334 
  Verifying  : rsync-3.0.9-15.el7.x86_64                                                                                                215/334 
  Verifying  : tzdata-java-2015a-1.el7.noarch                                                                                           216/334 
  Verifying  : sqlite-3.7.17-4.el7.x86_64                                                                                               217/334 
  Verifying  : libreport-web-2.1.11-21.el7.centos.0.4.x86_64                                                                            218/334 
  Verifying  : 1:grub2-tools-2.02-0.16.el7.centos.x86_64                                                                                219/334 
  Verifying  : abrt-tui-2.1.11-19.el7.centos.0.3.x86_64                                                                                 220/334 
  Verifying  : nss-softokn-3.16.2.3-9.el7.x86_64                                                                                        221/334 
  Verifying  : libvirt-daemon-1.2.8-16.el7.x86_64                                                                                       222/334 
  Verifying  : 1:NetworkManager-libnm-1.0.0-14.git20150121.b4ea599c.el7.x86_64                                                          223/334 
  Verifying  : freetype-2.4.11-9.el7.x86_64                                                                                             224/334 
  Verifying  : 10:qemu-kvm-1.5.3-86.el7.x86_64                                                                                          225/334 
  Verifying  : abrt-addon-xorg-2.1.11-19.el7.centos.0.3.x86_64                                                                          226/334 
  Verifying  : crash-7.0.9-4.el7.x86_64                                                                                                 227/334 
  Verifying  : libreport-anaconda-2.1.11-21.el7.centos.0.4.x86_64                                                                       228/334 
  Verifying  : flac-libs-1.3.0-4.el7.x86_64                                                                                             229/334 
  Verifying  : abrt-addon-kerneloops-2.1.11-19.el7.centos.0.3.x86_64                                                                    230/334 
  Verifying  : libvirt-daemon-driver-secret-1.2.8-16.el7.x86_64                                                                         231/334 
  Verifying  : abrt-2.1.11-19.el7.centos.0.3.x86_64                                                                                     232/334 
  Verifying  : 1:openssl-1.0.1e-42.el7.x86_64                                                                                           233/334 
  Verifying  : 1:gmp-6.0.0-11.el7.x86_64                                                                                                234/334 
  Verifying  : abrt-dbus-2.1.11-19.el7.centos.0.3.x86_64                                                                                235/334 
  Verifying  : ca-certificates-2014.1.98-72.el7.noarch                                                                                  236/334 
  Verifying  : abrt-cli-2.1.11-19.el7.centos.0.3.x86_64                                                                                 237/334 
  Verifying  : tzdata-2015a-1.el7.noarch                                                                                                238/334 
  Verifying  : abrt-console-notification-2.1.11-19.el7.centos.0.3.x86_64                                                                239/334 
  Verifying  : libreport-2.1.11-21.el7.centos.0.4.x86_64                                                                                240/334 
  Verifying  : libnl3-cli-3.2.21-8.el7.x86_64                                                                                           241/334 
  Verifying  : mesa-filesystem-10.2.7-5.20140910.el7.x86_64                                                                             242/334 
  Verifying  : freerdp-libs-1.0.2-5.el7.x86_64                                                                                          243/334 
  Verifying  : 1:grub2-2.02-0.16.el7.centos.x86_64                                                                                      244/334 
  Verifying  : rsyslog-7.4.7-7.el7_0.x86_64                                                                                             245/334 
  Verifying  : setroubleshoot-server-3.2.17-3.el7.x86_64                                                                                246/334 
  Verifying  : samba-common-4.1.12-21.el7_1.x86_64                                                                                      247/334 
  Verifying  : libmount-2.23.2-21.el7.x86_64                                                                                            248/334 
  Verifying  : 1:NetworkManager-glib-1.0.0-14.git20150121.b4ea599c.el7.x86_64                                                           249/334 
  Verifying  : libnl3-3.2.21-8.el7.x86_64                                                                                               250/334 
  Verifying  : nss-softokn-freebl-3.16.2.3-9.el7.x86_64                                                                                 251/334 
  Verifying  : 7:lvm2-libs-2.02.115-3.el7.x86_64                                                                                        252/334 
  Verifying  : python-chardet-2.0.1-7.el7.noarch                                                                                        253/334 
  Verifying  : mesa-libxatracker-10.2.7-5.20140910.el7.x86_64                                                                           254/334 
  Verifying  : libsmbclient-4.1.12-21.el7_1.x86_64                                                                                      255/334 
  Verifying  : centos-logos-70.0.6-1.el7.centos.noarch                                                                                  256/334 
  Verifying  : libgcrypt-1.5.3-12.el7.x86_64                                                                                            257/334 
  Verifying  : openssh-server-6.6.1p1-11.el7.x86_64                                                                                     258/334 
  Verifying  : libreport-plugin-mantisbt-2.1.11-21.el7.centos.0.4.x86_64                                                                259/334 
  Verifying  : nss-util-3.16.2.3-2.el7.x86_64                                                                                           260/334 
  Verifying  : mesa-libEGL-10.2.7-5.20140910.el7.x86_64                                                                                 261/334 
  Verifying  : libreport-centos-2.1.11-21.el7.centos.0.4.x86_64                                                                         262/334 
  Verifying  : clutter-1.14.4-12.el7.x86_64                                                                                             263/334 
  Verifying  : libreport-plugin-mailx-2.1.11-21.el7.centos.0.4.x86_64                                                                   264/334 
  Verifying  : systemtap-runtime-2.6-8.el7.x86_64                                                                                       265/334 
  Verifying  : dracut-network-033-240.el7.x86_64                                                                                        266/334 
  Verifying  : 1:mariadb-libs-5.5.41-2.el7_0.x86_64                                                                                     267/334 
  Verifying  : iputils-20121221-6.el7.x86_64                                                                                            268/334 
  Verifying  : device-mapper-multipath-libs-0.4.9-77.el7.x86_64                                                                         269/334 
  Verifying  : libsss_idmap-1.12.2-58.el7.x86_64                                                                                        270/334 
  Verifying  : 14:libpcap-1.5.3-3.el7_0.1.x86_64                                                                                        271/334 
  Verifying  : 32:bind-libs-lite-9.9.4-18.el7.x86_64                                                                                    272/334 
  Verifying  : unzip-6.0-13.el7.x86_64                                                                                                  273/334 
  Verifying  : xorg-x11-server-common-1.15.0-32.el7.x86_64                                                                              274/334 
  Verifying  : libwbclient-4.1.12-21.el7_1.x86_64                                                                                       275/334 
  Verifying  : 1:wpa_supplicant-2.0-13.el7_0.x86_64                                                                                     276/334 
  Verifying  : mesa-libgbm-10.2.7-5.20140910.el7.x86_64                                                                                 277/334 
  Verifying  : gnutls-utils-3.3.8-12.el7.x86_64                                                                                         278/334 
  Verifying  : libuser-0.60-5.el7.x86_64                                                                                                279/334 
  Verifying  : mesa-libglapi-10.2.7-5.20140910.el7.x86_64                                                                               280/334 
  Verifying  : libreport-plugin-bugzilla-2.1.11-21.el7.centos.0.4.x86_64                                                                281/334 
  Verifying  : libvirt-daemon-driver-network-1.2.8-16.el7.x86_64                                                                        282/334 
  Verifying  : mdadm-3.3.2-2.el7.x86_64                                                                                                 283/334 
  Verifying  : 1:NetworkManager-adsl-1.0.0-14.git20150121.b4ea599c.el7.x86_64                                                           284/334 
  Verifying  : coreutils-8.22-11.el7.x86_64                                                                                             285/334 
  Verifying  : 32:bind-utils-9.9.4-18.el7.x86_64                                                                                        286/334 
  Verifying  : 7:device-mapper-1.02.93-3.el7.x86_64                                                                                     287/334 
  Verifying  : 1:NetworkManager-tui-1.0.0-14.git20150121.b4ea599c.el7.x86_64                                                            288/334 
  Verifying  : 1:openssl-libs-1.0.1e-42.el7.x86_64                                                                                      289/334 
  Verifying  : libreport-gtk-2.1.11-21.el7.centos.0.4.x86_64                                                                            290/334 
  Verifying  : libreswan-3.12-5.el7.x86_64                                                                                              291/334 
  Verifying  : mesa-libGL-10.2.7-5.20140910.el7.x86_64                                                                                  292/334 
  Verifying  : 7:device-mapper-libs-1.02.93-3.el7.x86_64                                                                                293/334 
  Verifying  : openssh-clients-6.6.1p1-11.el7.x86_64                                                                                    294/334 
  Verifying  : 10:libcacard-1.5.3-86.el7.x86_64                                                                                         295/334 
  Verifying  : libreport-rhel-anaconda-bugzilla-2.1.11-21.el7.centos.0.4.x86_64                                                         296/334 
  Verifying  : libuuid-2.23.2-21.el7.x86_64                                                                                             297/334 
  Verifying  : libblkid-2.23.2-21.el7.x86_64                                                                                            298/334 
  Verifying  : krb5-libs-1.12.2-14.el7.x86_64                                                                                           299/334 
  Verifying  : openldap-2.4.39-6.el7.x86_64                                                                                             300/334 
  Verifying  : kpartx-0.4.9-77.el7.x86_64                                                                                               301/334 
  Verifying  : python-2.7.5-16.el7.x86_64                                                                                               302/334 
  Verifying  : libreport-plugin-rhtsupport-2.1.11-21.el7.centos.0.4.x86_64                                                              303/334 
  Verifying  : nss-tools-3.16.2.3-5.el7.x86_64                                                                                          304/334 
  Verifying  : 1:NetworkManager-wifi-1.0.0-14.git20150121.b4ea599c.el7.x86_64                                                           305/334 
  Verifying  : dnsmasq-2.66-12.el7.x86_64                                                                                               306/334 
  Verifying  : pam-1.1.8-12.el7.x86_64                                                                                                  307/334 
  Verifying  : kexec-tools-2.0.7-19.el7.x86_64                                                                                          308/334 
  Verifying  : selinux-policy-3.13.1-23.el7.noarch                                                                                      309/334 
  Verifying  : 32:bind-libs-9.9.4-18.el7.x86_64                                                                                         310/334 
  Verifying  : 1:cups-filesystem-1.6.3-17.el7.noarch                                                                                    311/334 
  Verifying  : 1:cups-1.6.3-17.el7.x86_64                                                                                               312/334 
  Verifying  : util-linux-2.23.2-21.el7.x86_64                                                                                          313/334 
  Verifying  : libsss_nss_idmap-1.12.2-58.el7.x86_64                                                                                    314/334 
  Verifying  : abrt-retrace-client-2.1.11-19.el7.centos.0.3.x86_64                                                                      315/334 
  Verifying  : 1:java-1.7.0-openjdk-headless-1.7.0.75-2.5.4.2.el7_0.x86_64                                                              316/334 
  Verifying  : firefox-31.4.0-1.el7.centos.x86_64                                                                                       317/334 
  Verifying  : 10:qemu-kvm-common-1.5.3-86.el7.x86_64                                                                                   318/334 
  Verifying  : rsyslog-mmjsonparse-7.4.7-7.el7_0.x86_64                                                                                 319/334 
  Verifying  : python-libs-2.7.5-16.el7.x86_64                                                                                          320/334 
  Verifying  : abrt-libs-2.1.11-19.el7.centos.0.3.x86_64                                                                                321/334 
  Verifying  : libreport-python-2.1.11-21.el7.centos.0.4.x86_64                                                                         322/334 
  Verifying  : libvirt-daemon-driver-storage-1.2.8-16.el7.x86_64                                                                        323/334 
  Verifying  : libreport-plugin-reportuploader-2.1.11-21.el7.centos.0.4.x86_64                                                          324/334 
  Verifying  : libreport-plugin-ureport-2.1.11-21.el7.centos.0.4.x86_64                                                                 325/334 
  Verifying  : nss-sysinit-3.16.2.3-5.el7.x86_64                                                                                        326/334 
  Verifying  : abrt-desktop-2.1.11-19.el7.centos.0.3.x86_64                                                                             327/334 
  Verifying  : dracut-033-240.el7.x86_64                                                                                                328/334 
  Verifying  : device-mapper-multipath-0.4.9-77.el7.x86_64                                                                              329/334 
  Verifying  : 2:irqbalance-1.0.7-1.el7.x86_64                                                                                          330/334 
  Verifying  : libvirt-daemon-driver-nodedev-1.2.8-16.el7.x86_64                                                                        331/334 
  Verifying  : libreport-cli-2.1.11-21.el7.centos.0.4.x86_64                                                                            332/334 
  Verifying  : 10:qemu-img-1.5.3-86.el7.x86_64                                                                                          333/334 
  Verifying  : 1:NetworkManager-1.0.0-14.git20150121.b4ea599c.el7.x86_64                                                                334/334 

Dependency Installed:
  lksctp-tools.x86_64 0:1.0.13-3.el7                                     pcsc-lite-libs.x86_64 0:1.8.8-5.el7                                    

Updated:
  NetworkManager.x86_64 1:1.0.0-16.git20150121.b4ea599c.el7_1           NetworkManager-adsl.x86_64 1:1.0.0-16.git20150121.b4ea599c.el7_1       
  NetworkManager-glib.x86_64 1:1.0.0-16.git20150121.b4ea599c.el7_1      NetworkManager-libnm.x86_64 1:1.0.0-16.git20150121.b4ea599c.el7_1      
  NetworkManager-team.x86_64 1:1.0.0-16.git20150121.b4ea599c.el7_1      NetworkManager-tui.x86_64 1:1.0.0-16.git20150121.b4ea599c.el7_1        
  NetworkManager-wifi.x86_64 1:1.0.0-16.git20150121.b4ea599c.el7_1      abrt.x86_64 0:2.1.11-22.el7.centos.0.1                                 
  abrt-addon-ccpp.x86_64 0:2.1.11-22.el7.centos.0.1                     abrt-addon-kerneloops.x86_64 0:2.1.11-22.el7.centos.0.1                
  abrt-addon-pstoreoops.x86_64 0:2.1.11-22.el7.centos.0.1               abrt-addon-python.x86_64 0:2.1.11-22.el7.centos.0.1                    
  abrt-addon-vmcore.x86_64 0:2.1.11-22.el7.centos.0.1                   abrt-addon-xorg.x86_64 0:2.1.11-22.el7.centos.0.1                      
  abrt-cli.x86_64 0:2.1.11-22.el7.centos.0.1                            abrt-console-notification.x86_64 0:2.1.11-22.el7.centos.0.1            
  abrt-dbus.x86_64 0:2.1.11-22.el7.centos.0.1                           abrt-desktop.x86_64 0:2.1.11-22.el7.centos.0.1                         
  abrt-gui.x86_64 0:2.1.11-22.el7.centos.0.1                            abrt-gui-libs.x86_64 0:2.1.11-22.el7.centos.0.1                        
  abrt-libs.x86_64 0:2.1.11-22.el7.centos.0.1                           abrt-python.x86_64 0:2.1.11-22.el7.centos.0.1                          
  abrt-retrace-client.x86_64 0:2.1.11-22.el7.centos.0.1                 abrt-tui.x86_64 0:2.1.11-22.el7.centos.0.1                             
  bind-libs.x86_64 32:9.9.4-18.el7_1.5                                  bind-libs-lite.x86_64 32:9.9.4-18.el7_1.5                              
  bind-license.noarch 32:9.9.4-18.el7_1.5                               bind-utils.x86_64 32:9.9.4-18.el7_1.5                                  
  binutils.x86_64 0:2.23.52.0.1-30.el7_1.2                              ca-certificates.noarch 0:2015.2.4-70.0.el7_1                           
  centos-logos.noarch 0:70.0.6-3.el7.centos                             clutter.x86_64 0:1.14.4-12.el7_1.1                                     
  coreutils.x86_64 0:8.22-12.el7_1.2                                    crash.x86_64 0:7.0.9-5.el7_1                                           
  cups.x86_64 1:1.6.3-17.el7_1.1                                        cups-client.x86_64 1:1.6.3-17.el7_1.1                                  
  cups-filesystem.noarch 1:1.6.3-17.el7_1.1                             cups-libs.x86_64 1:1.6.3-17.el7_1.1                                    
  device-mapper.x86_64 7:1.02.93-3.el7_1.1                              device-mapper-event.x86_64 7:1.02.93-3.el7_1.1                         
  device-mapper-event-libs.x86_64 7:1.02.93-3.el7_1.1                   device-mapper-libs.x86_64 7:1.02.93-3.el7_1.1                          
  device-mapper-multipath.x86_64 0:0.4.9-77.el7_1.2                     device-mapper-multipath-libs.x86_64 0:0.4.9-77.el7_1.2                 
  dnsmasq.x86_64 0:2.66-14.el7_1                                        dracut.x86_64 0:033-241.el7_1.5                                        
  dracut-config-rescue.x86_64 0:033-241.el7_1.5                         dracut-network.x86_64 0:033-241.el7_1.5                                
  fcoe-utils.x86_64 0:1.0.29-9.1.el7_1                                  firefox.x86_64 0:38.4.0-1.el7.centos                                   
  flac-libs.x86_64 0:1.3.0-5.el7_1                                      freerdp-libs.x86_64 0:1.0.2-5.el7_1.1                                  
  freetype.x86_64 0:2.4.11-10.el7_1.1                                   gdk-pixbuf2.x86_64 0:2.28.2-5.el7_1                                    
  gmp.x86_64 1:6.0.0-12.el7_1                                           gnutls.x86_64 0:3.3.8-12.el7_1.1                                       
  gnutls-dane.x86_64 0:3.3.8-12.el7_1.1                                 gnutls-utils.x86_64 0:3.3.8-12.el7_1.1                                 
  grub2.x86_64 1:2.02-0.17.0.1.el7.centos.4                             grub2-tools.x86_64 1:2.02-0.17.0.1.el7.centos.4                        
  hwdata.x86_64 0:0.252-7.8.el7_1                                       iputils.x86_64 0:20121221-6.el7_1.1                                    
  irqbalance.x86_64 2:1.0.7-2.el7_1                                     java-1.7.0-openjdk.x86_64 1:1.7.0.91-2.6.2.1.el7_1                     
  java-1.7.0-openjdk-headless.x86_64 1:1.7.0.91-2.6.2.1.el7_1           kexec-tools.x86_64 0:2.0.7-19.el7_1.2                                  
  kpartx.x86_64 0:0.4.9-77.el7_1.2                                      krb5-libs.x86_64 0:1.12.2-15.el7_1                                     
  libXfont.x86_64 0:1.4.7-3.el7_1                                       libblkid.x86_64 0:2.23.2-22.el7_1.1                                    
  libcacard.x86_64 10:1.5.3-86.el7_1.8                                  libgcrypt.x86_64 0:1.5.3-12.el7_1.1                                    
  libmount.x86_64 0:2.23.2-22.el7_1.1                                   libnl3.x86_64 0:3.2.21-9.el7_1                                         
  libnl3-cli.x86_64 0:3.2.21-9.el7_1                                    libpcap.x86_64 14:1.5.3-4.el7_1.2                                      
  libreport.x86_64 0:2.1.11-23.el7.centos.0.1                           libreport-anaconda.x86_64 0:2.1.11-23.el7.centos.0.1                   
  libreport-centos.x86_64 0:2.1.11-23.el7.centos.0.1                    libreport-cli.x86_64 0:2.1.11-23.el7.centos.0.1                        
  libreport-filesystem.x86_64 0:2.1.11-23.el7.centos.0.1                libreport-gtk.x86_64 0:2.1.11-23.el7.centos.0.1                        
  libreport-plugin-bugzilla.x86_64 0:2.1.11-23.el7.centos.0.1           libreport-plugin-mailx.x86_64 0:2.1.11-23.el7.centos.0.1               
  libreport-plugin-mantisbt.x86_64 0:2.1.11-23.el7.centos.0.1           libreport-plugin-reportuploader.x86_64 0:2.1.11-23.el7.centos.0.1      
  libreport-plugin-rhtsupport.x86_64 0:2.1.11-23.el7.centos.0.1         libreport-plugin-ureport.x86_64 0:2.1.11-23.el7.centos.0.1             
  libreport-python.x86_64 0:2.1.11-23.el7.centos.0.1                    libreport-rhel-anaconda-bugzilla.x86_64 0:2.1.11-23.el7.centos.0.1     
  libreport-web.x86_64 0:2.1.11-23.el7.centos.0.1                       libreswan.x86_64 0:3.15-5.el7_1                                        
  libsmbclient.x86_64 0:4.1.12-24.el7_1                                 libsss_idmap.x86_64 0:1.12.2-58.el7_1.18                               
  libsss_nss_idmap.x86_64 0:1.12.2-58.el7_1.18                          libusbx.x86_64 0:1.0.20-5.el7.centos                                   
  libuser.x86_64 0:0.60-7.el7_1                                         libuser-python.x86_64 0:0.60-7.el7_1                                   
  libuuid.x86_64 0:2.23.2-22.el7_1.1                                    libvirt-client.x86_64 0:1.2.8-16.el7_1.5                               
  libvirt-daemon.x86_64 0:1.2.8-16.el7_1.5                              libvirt-daemon-driver-interface.x86_64 0:1.2.8-16.el7_1.5              
  libvirt-daemon-driver-network.x86_64 0:1.2.8-16.el7_1.5               libvirt-daemon-driver-nodedev.x86_64 0:1.2.8-16.el7_1.5                
  libvirt-daemon-driver-nwfilter.x86_64 0:1.2.8-16.el7_1.5              libvirt-daemon-driver-qemu.x86_64 0:1.2.8-16.el7_1.5                   
  libvirt-daemon-driver-secret.x86_64 0:1.2.8-16.el7_1.5                libvirt-daemon-driver-storage.x86_64 0:1.2.8-16.el7_1.5                
  libvirt-daemon-kvm.x86_64 0:1.2.8-16.el7_1.5                          libwbclient.x86_64 0:4.1.12-24.el7_1                                   
  lvm2.x86_64 7:2.02.115-3.el7_1.1                                      lvm2-libs.x86_64 7:2.02.115-3.el7_1.1                                  
  mariadb-libs.x86_64 1:5.5.44-1.el7_1                                  mdadm.x86_64 0:3.3.2-2.el7_1.1                                         
  mesa-dri-drivers.x86_64 0:10.2.7-5.20140910.el7_1.1                   mesa-filesystem.x86_64 0:10.2.7-5.20140910.el7_1.1                     
  mesa-libEGL.x86_64 0:10.2.7-5.20140910.el7_1.1                        mesa-libGL.x86_64 0:10.2.7-5.20140910.el7_1.1                          
  mesa-libgbm.x86_64 0:10.2.7-5.20140910.el7_1.1                        mesa-libglapi.x86_64 0:10.2.7-5.20140910.el7_1.1                       
  mesa-libxatracker.x86_64 0:10.2.7-5.20140910.el7_1.1                  nspr.x86_64 0:4.10.8-2.el7_1                                           
  nss.x86_64 0:3.19.1-7.el7_1.2                                         nss-softokn.x86_64 0:3.16.2.3-13.el7_1                                 
  nss-softokn-freebl.x86_64 0:3.16.2.3-13.el7_1                         nss-sysinit.x86_64 0:3.19.1-7.el7_1.2                                  
  nss-tools.x86_64 0:3.19.1-7.el7_1.2                                   nss-util.x86_64 0:3.19.1-4.el7_1                                       
  numactl-libs.x86_64 0:2.0.9-5.el7_1                                   openldap.x86_64 0:2.4.39-7.el7.centos                                  
  openssh.x86_64 0:6.6.1p1-12.el7_1                                     openssh-clients.x86_64 0:6.6.1p1-12.el7_1                              
  openssh-server.x86_64 0:6.6.1p1-12.el7_1                              openssl.x86_64 1:1.0.1e-42.el7.9                                       
  openssl-libs.x86_64 1:1.0.1e-42.el7.9                                 pam.x86_64 0:1.1.8-12.el7_1.1                                          
  python.x86_64 0:2.7.5-18.el7_1.1                                      python-blivet.noarch 0:0.61.0.27-1.el7_1                               
  python-chardet.noarch 0:2.2.1-1.el7_1                                 python-libs.x86_64 0:2.7.5-18.el7_1.1                                  
  qemu-img.x86_64 10:1.5.3-86.el7_1.8                                   qemu-kvm.x86_64 10:1.5.3-86.el7_1.8                                    
  qemu-kvm-common.x86_64 10:1.5.3-86.el7_1.8                            rsync.x86_64 0:3.1.1-8.fc23                                            
  rsyslog.x86_64 0:7.4.7-7.el7_1.1                                      rsyslog-mmjsonparse.x86_64 0:7.4.7-7.el7_1.1                           
  samba-common.x86_64 0:4.1.12-24.el7_1                                 samba-libs.x86_64 0:4.1.12-24.el7_1                                    
  scl-utils.x86_64 0:20130529-17.el7_1                                  selinux-policy.noarch 0:3.13.1-23.el7_1.21                             
  selinux-policy-targeted.noarch 0:3.13.1-23.el7_1.21                   setroubleshoot.x86_64 0:3.2.17-4.1.el7_1                               
  setroubleshoot-server.x86_64 0:3.2.17-4.1.el7_1                       sos.noarch 0:3.2-15.el7.centos.8                                       
  spice-server.x86_64 0:0.12.4-9.el7_1.3                                sqlite.x86_64 0:3.7.17-6.el7_1.1                                       
  sssd-client.x86_64 0:1.12.2-58.el7_1.18                               systemtap-runtime.x86_64 0:2.6-10.el7_1                                
  trousers.x86_64 0:0.3.11.2-4.el7_1                                    tzdata.noarch 0:2015g-1.el7                                            
  tzdata-java.noarch 0:2015g-1.el7                                      unzip.x86_64 0:6.0-15.el7                                              
  util-linux.x86_64 0:2.23.2-22.el7_1.1                                 wpa_supplicant.x86_64 1:2.0-17.el7_1                                   
  xorg-x11-server-Xorg.x86_64 0:1.15.0-33.el7_1                         xorg-x11-server-common.x86_64 0:1.15.0-33.el7_1                        

Complete!
[iocuser@localhost ~]$ 
```

