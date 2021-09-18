#!/bin/bash
# by Beta Uliansyah <beta.uliansyah@gmail.com>
# this script works only if you install odoo from https://github.com/Yenthe666/InstallScript

# set a cron job like this:
# @reboot /home/ubuntu/odoo-check-curl.sh
# */3 * * * * /home/ubuntu/odoo-check-curl.sh

# adjust only these rows
SERVICE="/usr/bin/odoo"
LOGFILE=restart.log
# --end of config--

if ps ax -u odoo | grep -v grep | grep $SERVICE > /dev/null
then
    #echo "1"
    echo "$SERVICE is running well at `date`" >> $HOME/$LOGFILE
else
    #echo "2"
    echo "$SERVICE is not running. Restarting... at `date`" >> $HOME/$LOGFILE
    /etc/init.d/odoo-server restart
fi
