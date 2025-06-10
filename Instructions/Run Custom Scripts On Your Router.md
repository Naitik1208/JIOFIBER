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






