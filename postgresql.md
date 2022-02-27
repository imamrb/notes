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

\du 

## Drop User 
DROP USER <username>;

## See databases

```bash
sudo -u postgres psql

# display all users =# \du
# List all database =# \l
# connect to database =# \c dbname
# query : select * from users;
#display all tables 
\dt
\d

## List all tables , indexes 
\d <table_name>
```
