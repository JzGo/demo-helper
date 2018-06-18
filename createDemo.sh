#!bin/bash

if [[ $# -eq 0 ]]
  then
     echo "No demo type provided"
    exit 1
  else
    mkdir demoProject
  fi

case $1 in
  "-j" )
    mkdir demoProject/cssDemo
    touch demoProject/cssDemo/index.html && touch demoProject/cssDemo/index.css
    mkdir demoProject/bootStrapDemo
    touch demoProject/bootStrapDemo/index.html && touch demoProject/bootStrapDemo/index.css
    ;;
  "-fr" )
    cd demoProject
    rails new $2 --database=postgresql
    ;;
  "-fcra" )
    cd demoProject
    create-react-app $2
    ;;
  "-fs" )
    cd demoProject
    rails new "$2-back-end" --api --database=postgresql
    create-react-app "$2-front-end"
    ;;
  * )
    echo "No demo type provided"
 esac


