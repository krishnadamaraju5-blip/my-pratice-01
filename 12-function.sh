#!/bin/bash

user_id=$(id -u)

if [ $user_id -ne 0 ]; then
    echo "Please run the script with administrative priveleges"
    exit 1
fi

validate(){
    if [ $1 -ne 0 ]; then
    echo "$2.......failed"
    exit 1
    else
    echo "$2.....success"
    fi
}

dnf install nginx -y
validate $1 "Nginx installation is"

dnf install mysql -y
validate $1 "Mysql client installation is"

echo "THE END"