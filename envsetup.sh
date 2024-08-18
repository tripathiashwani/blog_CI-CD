#!/bin/bash

if [ -d "env" ] 
then
    echo "Python virtual environment exists." 
else
    echo $PATH
    python3 -m venv env
fi

<<<<<<< HEAD
echo $PWD
=======




>>>>>>> 95e9b3cd2a1c30354a31cb572ed837fbbcd410da
ls env/bin/

source env/bin/activate


pip3 install -r requirements.txt

if [ -d "logs" ] 
then
    echo "Log folder exists." 
else
    mkdir logs
    touch logs/error.log logs/access.log
fi

sudo chmod -R 777 logs
