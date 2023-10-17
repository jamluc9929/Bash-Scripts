#!/bin/bash
echo
echo "Please enter the username to create: "
echo
read username
echo
cut -d: -f1 /etc/passwd | grep -q "\b$username\b"
if [ $? -eq 0 ]; then
        echo "The User ID \"$username\" already exists!!"
        echo
else
        sudo useradd -m $username
        echo "The User ID \"$username\" has been created successfully!"
        echo
fi
