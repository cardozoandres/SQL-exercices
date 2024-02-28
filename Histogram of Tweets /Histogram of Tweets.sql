use twitter;
/* 
table creation
creacion de la tabla
create table tweets(
	tweet_id int, 
    user_id int, 
    msg varchar(255), 
    tweet_date timestamp
    PRIMARY KEY (tweet_id int)
    );
insert into tweets values
  (214252, 111, 'Am considering taking Tesla private at $420. Funding secured.', '2021-12-30 00:00:00'),
  (739252, 111, 'Despite the constant negative press covfefe', '2022-01-01 00:00:00'),
  (846402, 111, 'Following @NickSinghTech on Twitter changed my life!', '2022-02-14 00:00:00'),
  (241425, 254, 'If the salary is so competitive why won\'t you tell me what it is', '2022-03-01 00:00:00'),
  (231574, 148, 'I no longer have a manager. I can\'t be managed', '2022-03-23 00:00:00');
*//*
Exercise / Ejercicio
Assume you're given a table Twitter tweet data, write a query to obtain a histogram of tweets posted per user in 2022. Output the tweet count per user as the bucket and the number of Twitter users who fall into that bucket.
In other words, group the users by the number of tweets they posted in 2022 and count the number of users in each group.

Asume que te dan una tabla tweets de Twitter, escribe una busqueda para obtener un hostograma de tweets posteados por usuario en 2022. Obten el recuento de tweets por usuario como la el conjunto y la cantidad de usuarios de Twitter que caen en dicho conjunto.
En otras palabras , agrupa los usuarios por el numero de tweets posteados en 2022 y la cuenta de numero de usuarios en cada grupo
*/
select count(user_id), count 
from (
	/**/
	select count(tweet_id) AS count, user_id
    from tweets
    where tweet_date between '2022-01-01' and '2022-12-31'
	group by user_id
    ) AS queary
group by count;
