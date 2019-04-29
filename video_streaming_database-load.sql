use VideoStreamingService;

--------------------------------------------------------------------------------------------------------
SET IDENTITY_INSERT SALES.PLANS ON;
INSERT INTO SALES.PLANS(plan_id, plan_name, cycle_price_in_cent, amount_streaming_per_cycle_in_sec, cycle_length_in_sec, is_monthly,hd_available,ultra_hd_available,max_screen) VALUES(1, 'Basic', 	499,	144000,		2592000,	1,	1,	0, 1  )
INSERT INTO SALES.PLANS(plan_id, plan_name, cycle_price_in_cent, amount_streaming_per_cycle_in_sec, cycle_length_in_sec, is_monthly,hd_available,ultra_hd_available,max_screen) VALUES(2, 'Standard',999,	360000,		2592000,	1,	1,	1, 2  )
INSERT INTO SALES.PLANS(plan_id, plan_name, cycle_price_in_cent, amount_streaming_per_cycle_in_sec, cycle_length_in_sec, is_monthly,hd_available,ultra_hd_available,max_screen) VALUES(3, 'Premium', 1499,	1440000,	2592000,	1,	1,	1, 4  )
SET IDENTITY_INSERT PRODUCTION.PLANS OFF;


SET IDENTITY_INSERT SALES.SUBSCRIPTIONS ON;
INSERT INTO SALES.SUBSCRIPTIONS(subscription_id, plan_id, start_date, last_payment_date, joining_date) VALUES (1,	 1,	'2019-03-28',	'2019-04-23',	'2019-03-28')
INSERT INTO SALES.SUBSCRIPTIONS(subscription_id, plan_id, start_date, last_payment_date, joining_date) VALUES (2,	 1,	'2019-03-24',	 NULL,			'2019-03-24')
INSERT INTO SALES.SUBSCRIPTIONS(subscription_id, plan_id, start_date, last_payment_date, joining_date) VALUES (3,	 2,	'2019-03-30',	'2019-04-23',	'2019-03-30')
INSERT INTO SALES.SUBSCRIPTIONS(subscription_id, plan_id, start_date, last_payment_date, joining_date) VALUES (4,	 2,	'2019-03-25', 	 NULL,			'2019-03-25')
INSERT INTO SALES.SUBSCRIPTIONS(subscription_id, plan_id, start_date, last_payment_date, joining_date) VALUES (5,	 3,	'2019-03-23',	'2019-04-23',	'2019-03-23')
INSERT INTO SALES.SUBSCRIPTIONS(subscription_id, plan_id, start_date, last_payment_date, joining_date) VALUES (6,	 3,	'2019-03-30',	 NULL, 			'2019-03-30')
INSERT INTO SALES.SUBSCRIPTIONS(subscription_id, plan_id, start_date, last_payment_date, joining_date) VALUES (7,	 1,	'2019-03-26',	'2019-04-23',	'2019-03-23')
SET IDENTITY_INSERT SALES.SUBSCRIPTIONS OFF;

SET IDENTITY_INSERT SALES.CREDIT_CARDS ON;
INSERT INTO SALES.CREDIT_CARDS(credit_card_id,credit_card_type, credit_card_number, exp_month, exp_year, cvv, owner_first_name, owner_last_name, zip_code) VALUES (1,'Visa', '4111 1111 1111 1111', 5, 2025, 111, 'Debra', 'Burks',  '14127')
INSERT INTO SALES.CREDIT_CARDS(credit_card_id,credit_card_type, credit_card_number, exp_month, exp_year, cvv, owner_first_name, owner_last_name, zip_code) VALUES (2,'MasterCard', '5500 0000 0000 0004', 5, 2025, 345, 'Charolette', 'Rice',  '95820')
INSERT INTO SALES.CREDIT_CARDS(credit_card_id,credit_card_type, credit_card_number, exp_month, exp_year, cvv, owner_first_name, owner_last_name, zip_code) VALUES (3,'American Express','3400 0000 0000 009', 5, 2025, 100, 'Latasha', 'Hays',  '14215')
INSERT INTO SALES.CREDIT_CARDS(credit_card_id,credit_card_type, credit_card_number, exp_month, exp_year, cvv, owner_first_name, owner_last_name, zip_code) VALUES (4,'Dinner''s Club','3000 0000 0000 04' , 5, 2025, 905, 'Pamelia', 'Newman',  '10950')
INSERT INTO SALES.CREDIT_CARDS(credit_card_id,credit_card_type, credit_card_number, exp_month, exp_year, cvv, owner_first_name, owner_last_name, zip_code) VALUES (5,'Discover', '6011 0000 0000 0004 ', 5, 2025, 459, 'Deshawn', 'Mendoza',  '10952')
SET IDENTITY_INSERT SALES.CREDIT_CARDS OFF;

SET IDENTITY_INSERT SALES.SUBSCRIBERS ON;
INSERT INTO SALES.SUBSCRIBERS(subscriber_id, subscription_id, credit_card_id, pay_by_check,  first_name, last_name, phone, email, street, city, state, zip_code, left_to_stream_in_sec, total_stream_in_sec) VALUES(1,	1,		1,		0,	'Debra','Burks',NULL,'debra.burks@yahoo.com','9273 Thorne Ave. ','Orchard Park','NY','14127',143000,1000)
INSERT INTO SALES.SUBSCRIBERS( subscriber_id, subscription_id, credit_card_id, pay_by_check, first_name, last_name, phone, email, street, city, state, zip_code, total_stream_in_sec) VALUES(2,	NULL,	NULL,	0,	'Kasha','Todd',NULL,'kasha.todd@yahoo.com','910 Vine Street ','Campbell','CA','95008',0)
INSERT INTO SALES.SUBSCRIBERS(subscriber_id, subscription_id, credit_card_id, pay_by_check, first_name, last_name, phone, email, street, city, state, zip_code, left_to_stream_in_sec, total_stream_in_sec) VALUES(3,	2,		NULL,	1,	'Tameka','Fisher',NULL,'tameka.fisher@aol.com','769C Honey Creek St. ','Redondo Beach','CA','90278',142000,2000)
INSERT INTO SALES.SUBSCRIBERS(subscriber_id, subscription_id, credit_card_id, pay_by_check, first_name, last_name, phone, email, street, city, state, zip_code, left_to_stream_in_sec, total_stream_in_sec) VALUES(4,	NULL,	NULL,	0,	'Daryl','Spence',NULL,'daryl.spence@aol.com','988 Pearl Lane ','Uniondale','NY','11553',200,7000)
INSERT INTO SALES.SUBSCRIBERS(subscriber_id, subscription_id, credit_card_id, pay_by_check, first_name, last_name, phone, email, street, city, state, zip_code, left_to_stream_in_sec, total_stream_in_sec) VALUES(5,	3,		2,		0,	'Charolette','Rice','(916) 381-6003','charolette.rice@msn.com','107 River Dr. ','Sacramento','CA','95820',300000,60000)
INSERT INTO SALES.SUBSCRIBERS(subscriber_id, subscription_id, credit_card_id, pay_by_check, first_name, last_name, phone, email, street, city, state, zip_code, total_stream_in_sec) VALUES(6,	NULL,	NULL,	0,	'Lyndsey','Bean',NULL,'lyndsey.bean@hotmail.com','769 West Road ','Fairport','NY','14450',0)
INSERT INTO SALES.SUBSCRIBERS(subscriber_id, subscription_id, credit_card_id, pay_by_check, first_name, last_name, phone, email, street, city, state, zip_code, left_to_stream_in_sec, total_stream_in_sec) VALUES(7,	4,		3,		0,	'Latasha','Hays','(716) 986-3359','latasha.hays@hotmail.com','7014 Manor Station Rd. ','Buffalo','NY','14215',260000,100000)
INSERT INTO SALES.SUBSCRIBERS(subscriber_id, subscription_id, credit_card_id, pay_by_check, first_name, last_name, phone, email, street, city, state, zip_code, left_to_stream_in_sec, total_stream_in_sec) VALUES(8,	NULL,	NULL,	0,	'Jacquline','Duncan',NULL,'jacquline.duncan@yahoo.com','15 Brown St. ','Jackson Heights','NY','11372',7000,200)
INSERT INTO SALES.SUBSCRIBERS(subscriber_id, subscription_id, credit_card_id, pay_by_check, first_name, last_name, phone, email, street, city, state, zip_code, left_to_stream_in_sec, total_stream_in_sec) VALUES(9,	5,		NULL,	1,	'Genoveva','Baldwin',NULL,'genoveva.baldwin@msn.com','8550 Spruce Drive ','Port Washington','NY','11050',1400000,40000)
INSERT INTO SALES.SUBSCRIBERS(subscriber_id, subscription_id, credit_card_id, pay_by_check, first_name, last_name, phone, email, street, city, state, zip_code, left_to_stream_in_sec, total_stream_in_sec) VALUES(10,	6,		4,		0,	'Pamelia','Newman',NULL,'pamelia.newman@gmail.com','476 Chestnut Ave. ','Monroe','NY','10950',1000000,440000)
INSERT INTO SALES.SUBSCRIBERS(subscriber_id, subscription_id, credit_card_id, pay_by_check, first_name, last_name, phone, email, street, city, state, zip_code, left_to_stream_in_sec, total_stream_in_sec) VALUES(11,	7,		5,		0,	'Deshawn','Mendoza',NULL,'deshawn.mendoza@yahoo.com','8790 Cobblestone Street ','Monsey','NY','10952',50555,93445)
SET IDENTITY_INSERT SALES.SUBSCRIBERS OFF;

SET IDENTITY_INSERT SALES.INVOICES ON;
INSERT INTO SALES.INVOICES(invoice_id, subscriber_id, invoice_date,	due_date, total, tax_rate, discount, paid, pay_by_card, pay_by_check) VALUES(1,1,'2019-04-20 00:00:00.000','2019-04-27 00:00:00.000', 499, 0,0, 1, 1,0 )
INSERT INTO SALES.INVOICES(invoice_id, subscriber_id, invoice_date,	due_date, total, tax_rate, discount, paid, pay_by_card, pay_by_check) VALUES(2,3,'2019-04-20 00:00:00.000','2019-04-27 00:00:00.000', 499, 0,0, 0, 0,0 )
INSERT INTO SALES.INVOICES(invoice_id, subscriber_id, invoice_date,	due_date, total, tax_rate, discount, paid, pay_by_card, pay_by_check) VALUES(3,5,'2019-04-20 00:00:00.000','2019-04-27 00:00:00.000', 999, 0,0, 1, 1,0 )
INSERT INTO SALES.INVOICES(invoice_id, subscriber_id, invoice_date,	due_date, total, tax_rate, discount, paid, pay_by_card, pay_by_check) VALUES(4,7,'2019-04-20 00:00:00.000','2019-04-27 00:00:00.000', 999, 0,0, 0, 1,0 )
INSERT INTO SALES.INVOICES(invoice_id, subscriber_id, invoice_date,	due_date, total, tax_rate, discount, paid, pay_by_card, pay_by_check) VALUES(5,9,'2019-04-20 00:00:00.000','2019-04-27 00:00:00.000', 1499, 0,0, 1, 0,1 )
INSERT INTO SALES.INVOICES(invoice_id, subscriber_id, invoice_date,	due_date, total, tax_rate, discount, paid, pay_by_card, pay_by_check) VALUES(6,10,'2019-04-20 00:00:00.000','2019-04-27 00:00:00.000', 1499, 0,0, 0, 1,0 )
INSERT INTO SALES.INVOICES(invoice_id, subscriber_id, invoice_date,	due_date, total, tax_rate, discount, paid, pay_by_card, pay_by_check) VALUES(7,11,'2019-04-20 00:00:00.000','2019-04-27 00:00:00.000', 1499, 0,0, 1, 1,0 )
SET IDENTITY_INSERT SALES.INVOICES OFF;

-----------------------------------------------------------------------------------------------------------


SET IDENTITY_INSERT PRODUCTION.LICENSES ON;
INSERT INTO PRODUCTION.LICENSES(license_id,max_concurent_permitted_viewers, file_created_date) VALUES(1, 100, '2019-04-30 12:00:00')
INSERT INTO PRODUCTION.LICENSES(license_id, max_concurent_permitted_viewers ,file_created_date) VALUES(2,300, '2019-04-30 12:00:00')
INSERT INTO PRODUCTION.LICENSES(license_id, max_concurent_permitted_viewers ,file_created_date) VALUES(3,500, '2019-04-30 12:00:00')
SET IDENTITY_INSERT PRODUCTION.LICENSES OFF;


SET IDENTITY_INSERT PRODUCTION.PROVIDERS ON;
INSERT INTO PRODUCTION.PROVIDERS(provider_id, name, email, phone, street, city, state, zip_code) VALUES(1,	'Warner Bros', 	'wbsf@warnerbros.com', '818-954-3000','4000 Warner Boulevard', 'Burbank','CA', '91522'	)
INSERT INTO PRODUCTION.PROVIDERS(provider_id, name, email, phone, street, city, state, zip_code) VALUES(2,	'Sony Pictures Motion Picture Group', 'press_office@spe.sony.com', '212-833-8833','25 Madison Avenue', 'New York','NY', '10010'	)
INSERT INTO PRODUCTION.PROVIDERS(provider_id, name, email, phone, street, city, state, zip_code) VALUES(3,'Walt Disney Studio', 'wdw.public.relations@disney.com', '407-566-6397','P.O. Box 10000', 'Lake Buena Vista','FL', '32830'	)
SET IDENTITY_INSERT PRODUCTION.PROVIDERS OFF;


SET IDENTITY_INSERT PRODUCTION.VIDEOS ON;
INSERT INTO PRODUCTION.VIDEOS(video_id, provider_id, license_id, name,description,length,date_created,current_num_viewers) VALUES (1, 1,1, 'The Dark Knight' ,'When the menace known as The Joker emerges from his mysterious past, he wreaks havoc and chaos on the people of Gotham. The Dark Knight must accept one of the greatest psychological and physical tests of his ability to fight injustice.', 8280,'2019-03-20 12:00:00.000', 20 );
INSERT INTO PRODUCTION.VIDEOS(video_id, provider_id, license_id, name,description,length,date_created,current_num_viewers) VALUES (2, 1,1,'The Matrix','A computer hacker learns from mysterious rebels about the true nature of his reality and his role in the war against its controllers.', 8136,'2019-03-20 12:00:00.000', 20 );
INSERT INTO PRODUCTION.VIDEOS(video_id, provider_id, license_id, name,description,length,date_created,current_num_viewers) VALUES (3, 2,2, 'Skyfall',  'Bond s loyalty to M is tested when her past comes back to haunt her. When MI6 comes under attack, 007 must track down and destroy the threat, no matter how personal the cost.', 7272,'2019-04-30 12:00:00.000', 15 );
INSERT INTO PRODUCTION.VIDEOS(video_id, provider_id, license_id, name,description,length,date_created,current_num_viewers) VALUES (4, 2,2, 'Spider-Man 3',  'When bitten by a genetically modified spider, a nerdy, shy, and awkward high school student gains spider-like abilities that he eventually must use to fight evil as a superhero after tragedy befalls his family.', 7560,'2019-03-20 12:00:00.000', 30 );
INSERT INTO PRODUCTION.VIDEOS(video_id, provider_id, license_id, name,description,length,date_created,current_num_viewers) VALUES (5, 3,3, 'The Lion King',  'A Lion cub crown prince is tricked by a treacherous uncle into thinking he caused his father s death and flees into exile in despair, only to learn in adulthood his identity and his responsibilities.', 4608,'2019-03-30 12:00:00.000', 40 );
INSERT INTO PRODUCTION.VIDEOS(video_id, provider_id, license_id, name,description,length,date_created,current_num_viewers) VALUES (6, 3,3, 'Snow White and the seven Dwarfts',  'Exiled into the dangerous forest by her wicked stepmother, a princess is rescued by seven dwarf miners who make her part of their household.', 4428,'2019-03-20 12:00:00.000', 40 );
SET IDENTITY_INSERT PRODUCTION.VIDEOS OFF;


---------------DUMMY DATA FOR VIDEO/USER PAIRING----------------------------------------------
DECLARE @i int = 0
WHILE @i <  3
BEGIN
    SET @i = @i + 1
	INSERT INTO SALES.USERS_VIDEOS(video_id, subscriber_id) VALUES(1,1)
END

DECLARE @b int = 0
WHILE @b <  15
BEGIN
    SET @b = @b + 1
	INSERT INTO SALES.USERS_VIDEOS(video_id, subscriber_id) VALUES(2,3)
END

DECLARE @C int = 0
WHILE @C <  15
BEGIN
    SET @C = @C + 1
	INSERT INTO SALES.USERS_VIDEOS(video_id, subscriber_id) VALUES(2,1)
END

INSERT INTO SALES.USERS_VIDEOS(video_id, subscriber_id) VALUES(4,7)
DECLARE @d int = 0
WHILE @d <  29
BEGIN
    SET @d = @d + 1
	INSERT INTO SALES.USERS_VIDEOS(video_id, subscriber_id) VALUES(4,5)
END

INSERT INTO SALES.USERS_VIDEOS(video_id, subscriber_id) VALUES(3,11)
INSERT INTO SALES.USERS_VIDEOS(video_id, subscriber_id) VALUES(3,11)
DECLARE @e int = 0
WHILE @e <  13
BEGIN
    SET @e = @e + 1
	INSERT INTO SALES.USERS_VIDEOS(video_id, subscriber_id) VALUES(3,10)
END

DECLARE @f int = 0
WHILE @f <  40
BEGIN
    SET @f = @f + 1
	INSERT INTO SALES.USERS_VIDEOS(video_id, subscriber_id) VALUES(4,9)
	INSERT INTO SALES.USERS_VIDEOS(video_id, subscriber_id) VALUES(4,10)
END
-------------------------------------------------------------------------------