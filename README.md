# odoo-check-script
This bash script checks your odoo instance regularly through cron job. If the odoo instance is found dead, it will initiate a new odoo instance under screen terminal.

## 1. Install prerequisites
This script requires screen. You can install screen with

    sudo apt-get install screen 
in Ubuntu, or 

    sudo yum install screen
in Fedora.

## 2. Set cron job
Edit your crontable:

    crontab -e
    
For the crontab all paths in **MUST** be absolute. 

Within the open cron editor window

    @reboot /home/ubuntu/odoo-check.sh
    */3 * * * * /home/ubuntu/odoo-check.sh
This will check your odoo every 3 minutes. You may change this value to suit your need and condition.

### Set crontab every 10 seconds
Since crontab doesn't have second, we need to delay our script with sleep command and create a serial processes. Following is the example:

    * * * * * sh /odoo/odoo-check-script/odoo-check.sh
    * * * * * (sleep 10; sh /odoo/odoo-check-script/odoo-check.sh)
    * * * * * (sleep 20; sh /odoo/odoo-check-script/odoo-check.sh)
    * * * * * (sleep 30; sh /odoo/odoo-check-script/odoo-check.sh)
    * * * * * (sleep 40; sh /odoo/odoo-check-script/odoo-check.sh)
    * * * * * (sleep 50; sh /odoo/odoo-check-script/odoo-check.sh)


### Using Task Scheduler in Windows

This is a future feature.
