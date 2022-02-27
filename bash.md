# Bash Commands

## Current Directory
pwd

## create and delete directory 
mkdir <dirname> 
rmdir <dirname>

## Deletes both files and directories
rm -r <dirname> 

## Create file 
touch <filename> 

## man & --help
to know more about a command

## copy files 
cp <frompath> <topath>

## move or rename files
mv <frompath> <topath> 

## Search a file 
locate -i *contains*this*

-i: ignore cases

## Read and write to a file 
echo this is some text >> file.txt
cat <filepath>

## Show disk spaces
`$ df -m` 
-m: in megabytes
show folder size: `$ du <foldername>` 
show all file size: `$ ls -lah`

## system info 
`$ uname -a`

## Make a file executable 
```bash
chmod +x numbers.py 
--give root permission
chmod 755 numbers.py
or
sudo chmod +x numbers.py
```

## Hostname and ip 
ip address: hostname -I
hostname: hostname 

## Net usage
vnstat

## Current process network usage 
sudo nethogs

## Power off and reboot 
sudo halt
sudo reboot 

## Wifi Analyzer
wavemon


## Recursively delete all srt files
`find . -name "*.srt" -type f -delete`


## Move all zip files to a subdirectory
`find . -name "*.zip" | xargs -I files mv files ./resources`


## Open multiple links 

```bash
	#!/bin/zsh
	xdg-open https://news.google.com/topstories
	xdg-open https://meet.google.com/mam-vqqv-jvp
	xdg-open https://leave.welldev.io
	/bin/slack
	exit 0
````
