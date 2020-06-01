# SYSTEMUP
A script and a logrotate policy for checking how long the OS and separately individual daemons have been running (hopefully non-stop) over the months.

## Usage
Simply alter the list of systemd controlled daemons that you want to check on by
replacing the whitespace separated list of daemons with what you want to check in
association with the variable SERVICES.

Currently `SERVICES="atd cups crond auditd"`

The logrotate policy is written to capture all data for this month,
 and rename the logfile to a date extension of the full date of the last 
 day of the month.

## Files
* root-crontab - Copy the contents of this file to your crontab for root (/var/spool/cron/root), or /etc/crontab.
* logrot.systemup - This file is the logrotate policy that should remain in /root, where the crontab entry in root-crontab that executes /sbin/logrotate points to for a configuration.
* systemup.sh  - This is the script that generates the log data into the `systemup.log` file.
* systemup.log - Is the file created and updated in /var/log to capture output for discrete indications of the System separately from the list of defined daemons (listed in SERVICES variable).
