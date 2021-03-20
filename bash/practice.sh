#!/bin/bash
#create user
sudo dscl . -create /User/BashUser

#create group and add user to group
sudo dscl . create /Groups/practice RealName "Fake Users"
sudo dscl . append /Groups/practice GroupMemembership BashUser

#copy file from other directory
cp ~/Users/vero/DevopsExercises/myExercises/NonGithubFiles/hello.txt .

#change permission on files, group rights -- can only read and execute file
chmod 754 hello.txt

#rm .txt file
rm hello.txt
