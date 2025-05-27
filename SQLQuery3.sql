with cte as (
select * from bike_share_yr_0
union all
select * from bike_share_yr_1 )

select 
dteday,
season,
hr,
weekday,
a.yr,
rider_type,
price,
riders*price as Revenue,
(riders*price) - COGS as Profit,
COGS,
riders
from cte a 
left join cost_table b
on a.yr=b.yr

