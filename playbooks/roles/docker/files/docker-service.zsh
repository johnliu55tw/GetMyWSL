# Start docker service if it's not running
wsl.exe -d Ubuntu -u root -e sh -c 'service docker status > /dev/null || service docker start'
