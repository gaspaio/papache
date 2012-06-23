#!/bin/bash 
sudo phing -f /opt/papache/papache.xml -Dvhostname="$2" $1
