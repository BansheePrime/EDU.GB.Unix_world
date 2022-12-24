sudo mysql -u root

mysql> select user from mysql.user;
mysql> select user, host from mysql.user;
mysql> drop user 'testDB-user'@'mysql-geek';
mysql> select user, host from mysql.user;
mysql> create user 'testDB-user'@'localhost' identified by '123';
mysql> select user, host from mysql.user;
mysql> grant all privileges on testDB.* to 'testDB-user'@'localhost' with grant option;
mysql> flush privileges;
mysql> show grants for 'testDB-user'@'localhost';
mysql> select * from oneRANDOMgeek; select * from twoRANDOMgeek;