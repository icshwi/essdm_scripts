In cs-studio/tasks/main.yml

This configuration file has the following assumption:

* unzip is installed before this run
* /etc/xdg/menus/applications-merged directory exists.

With the minimal image and the minimal software selection,
these assumption is not valid.

So, have to install "unzip" and "redhat-menus"

redhat-menus creates the /etc/xdg/menus dir, so ansible can copy their menu/* files into /etc/xdg/menus/applications-merged

However, it may be better to think to use xdg-desktop-menu in xdg-utils in order to handle these menu files in future.


  
