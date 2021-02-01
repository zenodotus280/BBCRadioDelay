# This script can be started with `./superstart.sh`
# It is meant to simplify the initial start-up as the resync cron job will take over later on.
# I found that starting the radio streams too close to one another could cause issues.
# This will also reduce the tedium and potential for error when typing out many start_radio scripts manually.

/etc/init.d/icecast2 start &&
sleep 1
rm startlog &&
touch startlog
chmod 777 startlog
sleep 1
clear
sleep 1
echo "Icecast started!" >> startlog
sleep 2
echo "."
sleep 2
echo ".."
sleep 2
echo "..."
sleep 2
echo "...."
sleep 2
echo "....."
sleep 2
echo "Beginning Radio Boot Sequence."
sleep 4
clear
cd run-scripts
./start_radio.sh "BBC Radio 1" radio1 "Pop" &&
echo "Radio 1 online."
sleep 10
./start_radio.sh "BBC Radio 2" radio2 "Contemporary" &&
echo "Radio 2 online."
sleep 10
./start_radio.sh "BBC Radio 3" radio3 "Classical, Jazz, and More" &&
echo "Radio 3 online."
sleep 10
./start_radio.sh "BBC Radio 4" radio4fm "Talk" &&
echo "Radio 4 online."
sleep 10
./start_radio.sh "BBC Radio 5" radio5live "Sport" &&
echo "Radio 5 online."
sleep 10
./start_radio.sh "BBC Radio 6" 6music "Alternative" &&
echo "Radio 6 online."
sleep 5
cd ..
clear
echo "All servers started successfully." >> startlog
sleep 5
clear
echo "The first server should now be up on http://localhost:8000"
sleep 60
echo "All servers should now be up."
touch startlog


