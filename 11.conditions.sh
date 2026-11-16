#!/bin/bash

#first step : To check wheather user has root access or not. if user has access then proceed or else fail

#Second step: If root user proceed further if not terminate the script

#Third step: If second step is passed, then install dnf and mysql.


user_id=$(id -u)

if [ $user_id -ne 0 ]; then
    echo "The user should have administrative privileges"
    exit 1
fi


echo "Proceeding further"

dnf install nginx -y 

if [ $? -ne 0 ]; then
    echo "Nginx installation is failed"
    exit 1
else
    echo "Nginx installation is successful"
fi

dnf install mysql -y

if [ $? -ne 0 ]; then
    echo "Mysql client  is failed"
    exit 1
else
    echo "Mysql client is successful"
fi


echo " THE END"


