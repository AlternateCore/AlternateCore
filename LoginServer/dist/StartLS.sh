#!/bin/sh
java -Xms8m -Xmx32m -Xbootclasspath/p:./libs/jsr166.jar -cp ./libs/*:AC-Login.jar loginserver.LoginServer
lspid=$!
echo ${lspid} > loginserver.pid
echo "LoginServer started!"
