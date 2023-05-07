#!/bin/bash

#image link
IMAGELINK=assets/images/profile/

#newline
NL=$'\n'

echo $'Enter full name seperate names with "-" eg. Dut-Andrew-Kulang\t\t'
read F_NAME
echo $NL

echo "Hub/organization"
#read HUB

echo 'In which country are you active?'
#read COUNTRY

echo 'E-mail'
#read EMAIL

echo 'Your phone number e.g. +256782....'
echo 'Whatsapp Number e.g +2119..'
echo "Website URL e.g https://lead.asknet.community"
echo "Telegram username e.g UserName \\n"
echo "GitHub Username e.g UserName \\n"
echo "URL to LinkedIn profile"
echo "Your twitter username"
echo "Your Facebook username"
echo "Your instagram username"
echo "Mastodon profile link"
echo "Your wikifab username"
echo "Other"

#create image directory
mkdir -p $IMAGELINK/$F_NAME

echo "---
layout: profile
title: \"$F_NAME\"
iamge: \"$IMAGELINK/$F_NAME/\"
country: $COUNTRY
region:
hub: $HUB
languages:
mail: $EMAIL
phone:
whatsapp:
website:
telegram:
github:
linkedin:
twitter:
facebook:
instagram:
mastodon:
wikifab:
" > $F_NAME.md
