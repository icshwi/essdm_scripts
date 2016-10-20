```
yum groupinstall "X window system"
yum install lightdm
yum install openbox xfce4-session xfce4-panel xfce4-settings xfce4-systemload-plugin xfce4-terminal xfce4-session-engines xfce4-about xfce4-dev-tools xfce4-mount-plugin
```



* if gdm exists, systemctl disable gdm
```
systemctl enable lightdm
```
* if no gui exists before, 
```
systemctl set-default graphical.target
```

* create autostart in ${HOME}/.config/openbox/autostart
``
mkdir -p ${HOME}/.config/openbox/
echo "xfce4-session&" > ${HOME}/.config/openbox/autostart
``

