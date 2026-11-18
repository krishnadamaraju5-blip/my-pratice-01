#/bin/bash

user_id=$(id -u)
logs_folder="/var/log/shell-scripting"
logs_file="${logs_folder}/${0}"

if [ $user_id -ne 0 ]; then
    echo "Please run the script with administrative privileges"
    exit 1
fi   

echo "Script started execution at: $(date +"%F %T") &>> $logs_file
mkdir -p $logs_folder

validate(){
    if [ $1 -ne 0 ]; then
    echo "${2}......failed" | tee -a ${logs_file}
    exit 1
    else
    echo "${1}.....success" | tee -a ${logs_file}
}

dnf install nginx -y &>> $logs_file
validate $? "Nginx installation is"

dnf install mysql -y &>> $logs_file
validate $? "Mysql client is"

echo "Script completed execution at: $(date +"%F %T") &>> $logs_file




