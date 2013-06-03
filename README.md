# SE305 Homework Lab2 ---- hotel
#### Group members: 
>  **Wenzhu Luo, Wenjie Wu, Xuejia Chen, Chenyu Lan**

The project is based on Django 1.4+. Recommend to browse in **Google-chrome**.

Github link && Readme: [https://github.com/Lhfcws/hotel](https://github.com/Lhfcws/hotel)

## Installation
> Pre-condition: Make sure you have Django 1.4+ environment.

1. Create database `hotel` in MySQL


    `[mysql] create database hotel;`


2. Sync Django Model with MySQLdb


    `[shell]$ python manage.py syncdb`

3. Insert some test data into database.


     `[mysql] source insertdata.sql;`
