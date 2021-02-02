# This script can be started with `./superstart.sh` once the executable persmissions are set (chmod 777)
# It is meant to simplify the initial start-up as the resync cron job will take over later on for weekly maintenance.
# This will also reduce the tedium and potential for error when typing out many start_radio scripts manually.

/etc/init.d/icecast2 start && # the only command that isn't handled elsewhere in the scripts
sleep 10
/root/BBCRadioDelay/cron-scripts/resync # this will wipe any audio that has been downloaded so far but also means just one place to edit the stream details
