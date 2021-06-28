# Write your MySQL query statement below

select ad_id, round(ifnull((sum(case when action = 'Clicked' then 1 else 0 end)) /
(sum(case when action = 'Clicked' then 1 else 0 end) + sum(case when action = 'Viewed' then 1 else 0 end)), 0)*100, 2) as ctr
from Ads
group by ad_id
order by ctr desc, ad_id asc;