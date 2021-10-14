# Terraform AWS Elasticache Project
Improving application performance using Amazon ElastiCache
## Before: Using Simple Database to retrive Data
![Screenshot 2021-09-29 161700](https://user-images.githubusercontent.com/23433121/137405713-6644258d-7706-40f3-8f35-e25e1063b0a4.png)
## After: Using Elasticache for Redis
![Screenshot 2021-09-29 161756](https://user-images.githubusercontent.com/23433121/137405733-221312a2-5bbb-4981-9f9f-8c61bb77caa1.png)

## Some of the useful commands
```sh
sudo yum install postgresql-devel gcc python3-devel git
sudo pip3 install psycopg2 redis flask

export PGHOST=elastic-identity.zzzzzzzzzzz.us-east-1.rds.amazonaws.com

psql -U postgres
#create database
create database project;
#create password
create user project password 'akhilxxxx';
#create role
grant all on DATABASE project to project;
\q

psql -U project
#info
\c
\q

git clone https://github.com/AkhilMovva/Terraform-Elastic-Cache-Project
cd elastic-cache-challenge/
#install
psql -U project -f install.sql
#update
vim config/database.ini

python3 app.py

vim config/database.ini
  [redis]
  redis_url=redis://elastic-redis.zzzzz.xxxxx.use1.cache.amazonaws.com:xxxx
python3
>>>import redis
>>>cache = redis.Redis.from_url('redis://elastic-redis.zzzzz.xxxxx.use1.cache.amazonaws.com:xxxx')
>>>cache.ping()
#True

vim app.py
#modify and run
python3 app.py
```
