/*
--------------------------------------------------------------------
© 2019 LIFION PROJECT: VIDEO STREAMING SERVICE 
AUTHOR: Alseny Sylla (alsenys600@gmail.com)
--------------------------------------------------------------------
Name   : VideStreamService
Link   : https://github.com/senyboy10/VideoStreamingService/blob/master/video_streaming_database-drop-all.sql
Version: 1.0
--------------------------------------------------------------------
*/
-- drop tables



DROP TABLE IF EXISTS SALES.USERS_VIDEOS;
DROP TABLE IF EXISTS SALES.PLAN_HISTORY;
DROP TABLE IF EXISTS SALES.ACTIVE_VIEWS;
DROP TABLE IF EXISTS PRODUCTION.VIDEOS;
DROP TABLE IF EXISTS SALES.INVOICES;
DROP TABLE IF EXISTS SALES.SUBSCRIBERS;
DROP TABLE IF EXISTS SALES.SUBSCRIPTIONS;
DROP TABLE IF EXISTS SALES.PLANS;
DROP TABLE IF EXISTS SALES.CREDIT_CARDS;

DROP TABLE IF EXISTS PRODUCTION.LICENSES;
DROP TABLE IF EXISTS PRODUCTION.PROVIDERS;



-- drop the schemas

DROP SCHEMA IF EXISTS SALES;
DROP SCHEMA IF EXISTS PRODUCTION;