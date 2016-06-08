# odoo-check-script
This bash script checks your odoo instance regularly through cron job. If the odoo instance is found dead, it will initiate a new odoo instance under screen terminal.

## 1. Install prerequisites
This script requires screen. You can install screen with 
    `sudo apt-get install screen` 
in Ubuntu, or 
    `sudo yum install screen` 
in Fedora.

## 2. Set cron job
Edit your crontable:

    crontab -e
    
For the crontab all paths in **MUST** be absolute. 

Within the open cron editor window

    `@reboot /home/ubuntu/odoo-check.sh
    */3 * * * * /home/ubuntu/odoo-check.sh`

### Using Task Scheduler in Windows

This is a future feature.
