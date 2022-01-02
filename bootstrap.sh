#!/bin/bash
oMAINTAINER Akbar Mohammadi ; akbar.mohammadi70@gmail.com     

launch() {
    sudo cat ./hosts >> /etc/hosts
    docker-compose up -d
    docker exec -i mysql sh -c ' mysql --user=root --password=P@ssw0rd < /database/a2billing-createdb-user.sql'
    docker exec -i mysql sh -c ' /database/install-db.sh'
    echo "Please enter a key"
    read sleep6
}

clear
selection=
until [ "$selection" = "6" ]; do
    clear

    echo -e "Deploy a2billing"
    echo -e ""
    echo -e ""
    echo -e "1) Build admin"
    echo -e "2) Build customer"
    echo -e "3) Build asterisk"
    echo -e "4) Pull docker images"
    echo -e "5) Launch application"  
    echo -e "6) Exit"
    echo ""
    echo ""
    echo -n "Enter selection: "
    read selection
    echo ""
    case $selection in
        1 ) clear ; docker build -t admin ./admin/.  ; read sleep1 ;;
        2 ) clear ; docker build -t customer ./customer/. ; read sleep2 ;;
        3 ) clear ; docker build -t asterisk ./asterisk/. ; read sleep3 ;;
        4 ) clear ; docker pull mysql:5.6 && docker pull traefik:v2.2 && docker pull php:5.6-apache && docker pull debian:buster-slim  ; read sleep3 ;;
        5 ) clear ; launch ; read sleep4 ;;
        6 ) clear ; echo "GOOD BYE" ; read sleep5 ; exit ;;
        * ) clear ; echo "Please enter a number "
    esac
done


