/*
--------------------------------------------------------------------
© 2019 LIFION PROJECT: VIDEO STREAMING SERVICE 
AUTHOR: Alseny Sylla (alsenys600@gmail.com)
--------------------------------------------------------------------
Name   : VideStreamService
Link   : https://github.com/senyboy10/VideoStreamingService/blob/master/video_streaming_database-video-user-pairing.sql
Version: 1.0

DESCRIPTION:
    SQL Query
Write a SQL query to return the top 20 video/user pairings. 
In other words, show which videos have been most re-watched by a single user.

--------------------------------------------------------------------
*/

 
SELECT   TOP 20
	S.subscriber_id,
	S.first_name,
	S.last_name,
	V.video_id, 
	V.name,
	COUNT(*)  As Number_of_Views

FROM 	
	SALES.USERS_VIDEOS  UV  INNER JOIN 	SALES.SUBSCRIBERS S  ON  UV.subscriber_id = S.subscriber_id 
							INNER JOIN  PRODUCTION.VIDEOS V  ON  UV.video_id      = V.video_id

GROUP BY     V.video_id,	S.subscriber_id,	S.first_name,	 S.last_name, S.email, V.name
ORDER BY     Number_of_Views    DESC;
