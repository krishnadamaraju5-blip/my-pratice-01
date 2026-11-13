#!/bin/bash
### Special variables ######

echo "All args passed to the script $@"
echo "All args passed to the script as word: $*"
echo "Number of args passed to the script: $#"
echo "Script full name: $0"
echo "first variable passed to ths script: $1"
echo "Realpath of the scirpt: $(realpath $0)"
echo "Who is running the script: $USER"
echo "Home Directory of the current user: $HOME"
echo "Directory of the current script: $PWD"
echo "PID of the current script: $$"
sleep 10&
echo "PID of the script runnning in background: $!"
wait $!
echo "exit status of the previous command: $?"
echo "LINE NUMBER: $LINENO"
echo "Total time taken by the script: $SECONDS"