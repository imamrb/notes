# Installation
https://www3.ntu.edu.sg/home/ehchua/programming/sql/PostgreSQL_GetStarted.html

```
sudo apt-get install postgresql postgresql-contrib libpq-dev
```

## Add your UNIX user as PostgreSQL user

```
 sudo -u postgres createuser --superuser $USER
 sudo -u postgres createdb $USER
```
- Now, you can invoke "psql" from your user account.
`$ psql`


# Postgres Commands

## If you would like to set a password for the user, you can do the following

sudo -u postgres psql
postgres=# \password <password>

## Change password

`ALTER USER $USER WITH PASSWORD 'password';`

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
