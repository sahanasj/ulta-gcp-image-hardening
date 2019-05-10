#!/bin/bash

sudo apt-get update 
sudo apt install -y nginx
LOCATION_OF_INDEX=/usr/share/nginx/html/index.html
sudo bash -c "cat <<A_VERY_SPECIAL_MESSAGE>$LOCATION_OF_INDEX
<html>
<h2> Hello, World! </h2>
</html>