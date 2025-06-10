# RUN CUSTOM SCRIPTS ON JIO ROUTER

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

You may use the path `/flash2/pfrm2.0/etc`

To do so use commands
`mkdir /flash2`

`mkdir /flash2/pfrm2.0`

`mkdir /flash2/pfrm2.0/etc`

Create any script in this directory using command 
`vi /flash2/scripts/scriptname.sh`

**LOOP TO RUN SCRIPTS IN A DIRECTORY**

for i in /flash2/pfrm2.0/etc/init.d.user/*.sh; do
if [ -x "$i" ]; then # Check if the file exists and is executable
echo "Executing custom script: $i"
"$i" & # Run in the background (optional, depends on your needs) # Or run in the foreground: # "$i"
fi
done

Here I have used /flash2/pfrm2.0/etc as path to scripts you may use any path as per your convenience. 






