#!bin/bash
echo "All variables passed to the script: $@"
echo "number of variables passed : $#"
echo "script name : $0"
echo "current working directory : $PWD"
echo "home directory of current user : $HOME"
echo "PID of the executing script : $$"
sleep 100&
echo "PID last executing script : $!"