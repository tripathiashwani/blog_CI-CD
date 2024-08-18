#!/bin/bash

if [ -d "env" ] 
then
    echo "Python virtual environment exists." 
else
    echo $PATH
    python3 -m venv env
fi

echo $PWD
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