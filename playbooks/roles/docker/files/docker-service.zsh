# Start docker service if it's not running
service docker status > /dev/null || wsl.exe -u root service docker start
