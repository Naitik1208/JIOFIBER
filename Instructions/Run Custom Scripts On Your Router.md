#RUN CUSTOM SCRIPTS ON JIO ROUTER

This guide is only for educational purposes, I am not responsible for bricked routers, Try at your own risk. 

**Keep in mind you are changing commands in root partition, so don't try to experiment without knowing what you are doing as it may brick your router.**

Successfully Tested on JIO JCOW404 ROUTER. 

1.Create your script using telnet and store in a directory.

2.Go to `/etc/init.d`

3.Find `rcS` file, edit it. 

4.At the end of this file file add a line
`/path to script/script.sh &`
path to script - where u stored script
or you can store scripts in directory and use a loop like I did

You may use the path `/flash2/scripts`

To do so use commands
`mkdir /flash2`

`mkdir /flash2/scripts`

Create any script in this directory using command 
`vi /flash2/scripts/scriptname.sh`






