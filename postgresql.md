ALTER USER safebox_api_dev WITH PASSWORD 'safebox_api_pass';
# Postgres Commands

## If you would like to set a password for the user, you can do the following

sudo -u postgres psql
postgres=# \password <password>

## Switch to user

```bash
sudo -u postgress <username>

sudo -u postgres psql
```

## DDL

```bash
sudo -u postgres createuser <name> -s ##Create a user in postgres
```

```bash
sudo -u postgres psql ## See databases

DROP USER <username>; ## Drop User

\du # display all users 
\l # List all database 
\c dbname # connect to database =# 
select * from users; # query 

\dt #display all tables 
\d

\d <table_name> ## List all tables , indexes 
```
