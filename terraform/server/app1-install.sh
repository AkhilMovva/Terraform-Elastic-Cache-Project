#! /bin/bash
# Instance Identity Metadata Reference - https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/instance-identity-documents.html

sudo yum -y install postgresql-devel gcc python3-devel git
sudo pip3 install psycopg2 redis flask
