#!/bin/bash
mongod --fork --syslog

mongorestore -d $1 $2

echo "Successfully restore data to $1 from $2"

#exec bash
mongod --shutdown

mongod

