#!/bin/bash 
sudo phing -f /opt/papache/papache.xml -Dvhost="$2" $1
