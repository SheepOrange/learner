WITH 

Ranked AS --THIS IS A TEMP RESULT SET
(SELECT 
row_number() OVER (PARTITION BY COUNTRY ORDER BY EVENT_DATE DESC) as rn
, COUNTRY
,EVENT_DATE
FROM 
Flight_data 
)

SELECT

RN
,COUNTRY
,EVENT_DATE
FROM
Ranked 
WHERE rn<2
