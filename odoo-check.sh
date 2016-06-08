#!/bin/bash
# by Beta Uliansyah <beta.uliansyah@gmail.com>
# this script requires screen
# install screen with sudo apt-get install screen in Ubuntu, or sudo yum install screen in Fedora
# set a cron job like this:
# @reboot /home/ubuntu/odoo-check.sh
# */3 * * * * /home/ubuntu/odoo-check.sh

# adjust only these rows
SERVICE=/home/ubuntu/odoo/odoo.py
LOGFILE=restart.log
# stop adjusting--

if ps ax | grep -v grep | grep $SERVICE > /dev/null
then
    #echo "1"
    echo "$SERVICE is running well at `date`" >> $HOME/$LOGFILE
else
    #echo "2"
    echo "$SERVICE is not running. Restarting... at `date`" >> $HOME/$LOGFILE
    screen -S ODOO-`date "+%F"`-`date "+%T"` -d -m $SERVICE
fi
