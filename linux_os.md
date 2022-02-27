# Linux OS specific commands


## Os info 

```bash
cat /etc/os-release

lsb_release -c -s
```

## Apt

```bash
apt-mark showmanual # To show manually installed apps
apt list --manual-installed | grep -F \[installed\] # to get a list of packages that resulted from user commands and their dependencies only,
```

### see key list
```
sudo apt-key list
sudo apt-key del 73C62A1B
```

### see repository list
sudo nano /etc/apt/sources.list

## Tlp stat
`sudo tlp-stat -s -c -b`

## Google accounts gnome workaround
`WEBKIT_DISABLE_COMPOSITING_MODE=1 gnome-control-center`

## Show drivers
lspci -v | less

## Change Default Terminal
`sudo update-alternatives --config x-terminal-emulator`

## Shortcuts

```bash
Ctrl + `= focus terminal in vscode 
Ctrl + 1 =  focus editor in vscode

```

## Run pgAdmin4

```bash
source bin/activate

python lib/python3.8/site-packages/pgadmin4/pgAdmin4.py

lsof -wni tcp:3000

kill -9 PID

```

## RabbitMQ

```bash
systemctl is-enabled rabbitmq-server.service 
sudo systemctl enable rabbitmq-server

localhost:15672
imam07
abcdqrty
```

## Redis

```bash
journalctl -u redis-server
sudo touch /var/log/redis/redis-server.log
chmod 777 /var/log/redis/redis-server.log

sudo systemctl restart redis.service
sudo systemctl start redis
```