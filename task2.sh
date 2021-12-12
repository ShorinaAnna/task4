
#!/bin/bash

mysql -h db -P 3306 -u root --password=pass --execute "CREATE DATABASE dostavim;"
mysql -h db -P 3306 -u root --password=pass --database=dostavim </CREATE.sql

java -jar /seed.jar
java -jar /run.jar