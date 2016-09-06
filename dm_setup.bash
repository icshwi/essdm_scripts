#!/bin/bash

# # Redefine pushd and popd to reduce their output messages
# #
pushd() { builtin pushd "$@" > /dev/null; }
popd() { builtin popd "$@" > /dev/null; }

sudocommand="sudo"

$sudocommand rm -rf /etc/yum.repos.d/*

$sudocommand curl -o /etc/yum.repos.d/CentOS-Base.repo https://artifactory01.esss.lu.se/artifactory/list/devenv/repositories/repofiles/CentOS-Vault-7.1.1503.repo

$sudocommand curl -o /etc/yum.repos.d/epel-19012016.repo https://artifactory01.esss.lu.se/artifactory/list/devenv/repositories/repofiles/epel-19012016.repo

$sudocommand curl -o /etc/pki/rpm-gpg/RPM-GPG-KEY-EPEL-7 https://artifactory01.esss.lu.se/artifactory/list/devenv/repositories/repofiles/RPM-GPG-KEY-EPEL-7

# -y Assume yes, doesn't work :)
# They asked me the answer... three times

$sudocommand yum -y install  git ansible

rm -rf ics-ans-devenv
git clone https://bitbucket.org/europeanspallationsource/ics-ans-devenv.git

pushd ./ics-ans-devenv


git_src_list=()
git_src_list+=("master")
git_src_list+=($(git tag -l | sort -n))

index=0
for tag in "${git_src_list[@]}"
do
printf "%2s: git src %34s\n" "$index" "$tag"
let "index = $index + 1"
done


echo -n "Select master or one of tags which can be built: "
read -e line

src_master=0

selected_git_src=${git_src_list[line]}
echo $selected_git_src
echo ""
if [ "$line" -ne "$src_master" ];
then
echo "$line"
GIT_CKOUTCMD="git checkout ${selected_git_src}"
else
GIT_CKOUTCMD="git checkout tags/${selected_git_src}"

fi

echo $GIT_CKOUTCMD

$GIT_CKOUTCMD

sudo ansible-playbook -i "localhost," -c local devenv.yml --extra-vars="DEVENV_SSSD=true DEVENV_EEE=local DEVENV_CSS=true DEVENV_OPENXAL=false DEVENV_IPYTHON=false"

popd
