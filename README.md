# SYSTEMUP
A script and a logrotate policy for checking how long the OS and separately individual daemons have been running (hopefully non-stop) over the months.

##Usage
Simply alter the list of systemd controlled daemons that you want to check on by
replacing the whitespace separated list of daemons with what you want to check in
association with the variable SERVICES.

Currently `SERVICES="atd cups crond auditd"`

### The logrotate policy is written to capture all data for this month,
 and rename the logfile to a date extension of the full date of the last 
 day of the month.

