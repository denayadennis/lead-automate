#!/bin/bash

#image link
IMAGELINK='assets/images/profiles/'
profiles_home_path='_profiles/'

echo $'Enter full eg. Dut Andrew Kulang: '
read F_NAME

# removing extra unnecessary spaces in the string.
F_NAME=$(echo "$F_NAME" | tr -s ' ')


# name separeted by dashes to be create image and markdown files 'Dut-Andrew-Kulang/' 'Dut-Andrew-Kulang.md'
D_NAME="${F_NAME//' '/'-'}"

# Image directory
IMAGE_DIR=$IMAGELINK$D_NAME

# the path to a profile among other profiles
path_to_profile=$profiles_home_path$D_NAME.md

if [ ! -f "$path_to_profile" ]
    then
    read -p $'Hub/organization\n' HUB

    read -p $'In which country are you active in?\n' COUNTRY

    read -p $"In region/district/state of $COUNTRY are you operatin in?\n" REGION

    read -p $'E-mail\n' EMAIL


    read -p $'Your phone number e.g. +256782....\n' PHONE_NUMBER
    read -p $'Whatsapp Number e.g +2119..\n' WHATSAPP_NUMBER
    read -p $'Website URL e.g https://lead.asknet.community\n' WEBSITE_URL
    read -p $'Telegram username e.g UserName\n' TELEGRAM
    read -p $'GitHub Username e.g UserName\n' GITHUB
    read -p $'URL to LinkedIn profile\n' LINKEDIN
    read -p $'Your twitter username\n' TWITTER
    read -p $'Your Facebook username\n' FACEBOOK
    read -p $'Your instagram username\n' INSTAGRAM
    read -p $'Mastodon profile link\n' MASTODON
    read -p $'Your wikifab username\n' WIKIFAB
    read -p $'Other\n' OTHER


    #check if the expert already has an image directory

    if [ -d "$IMAGE_DIR" ]
    then
        echo "$F_NAME already has a image folder at $IMAGE_DIR"
    else
        mkdir -p $IMAGE_DIR
        echo "Image folder created for $F_NAME at $IMAGE_DIR"
    fi


    if [ ! -d "$profiles_home_path" ]
    then
        #profile path
        mkdir -p _profiles    
    fi


    # check if the expert already has a profile .md file 

        
    echo "---
    layout: profile
    title: \"$F_NAME\"
    image: \"$IMAGELINK$D_NAME/\"
    country: $COUNTRY
    region: $REGION
    hub: $HUB
    languages:
    mail: $EMAIL
    phone: $PHONE_NUMBER
    whatsapp: $WHATSAPP_NUMBER
    website: $WEBSITE_URL
    telegram: $TELEGRAM
    github: $GITHUB
    linkedin: $LINKEDIN
    twitter: $TWITTER
    facebook: $FACEBOOK
    instagram: $INSTAGRAM
    mastodon: $MASTODON
    wikifab: $WIKIFAB
    " > $path_to_profile
    else
        echo "$F_NAME already has a profile file at $path_to_profile."
fi