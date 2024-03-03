use twitter;
create table tweets(
	tweet_id int, 
    user_id int, 
    msg varchar(255), 
    tweet_date timestamp,
    PRIMARY KEY (tweet_id )
    );
insert into tweets values
  (214252, 111, 'Am considering taking Tesla private at $420. Funding secured.', '2021-12-30 00:00:00'),
  (739252, 111, 'Despite the constant negative press covfefe', '2022-01-01 00:00:00'),
  (846402, 111, 'Following @NickSinghTech on Twitter changed my life!', '2022-02-14 00:00:00'),
  (241425, 254, 'If the salary is so competitive why won\'t you tell me what it is', '2022-03-01 00:00:00'),
  (231574, 148, 'I no longer have a manager. I can\'t be managed', '2022-03-23 00:00:00');
select count(user_id), count 
from (
	/**/
	select count(tweet_id) AS count, user_id
    from tweets
    where tweet_date between '2022-01-01' and '2022-12-31'
	group by user_id
    ) AS queary
group by count;
