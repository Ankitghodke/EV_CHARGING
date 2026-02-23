use EV_CHARGING_ANALYSIS

SELECT * FROM dbo.EV_Charging

select COUNT(session_ID) as Total_Sessions,
SUM(charging_cost_INR) as Total_Revenue
FROM dbo.EV_Charging;

select MONTH as Month,
SUM(Charging_Cost_INR) as Total_Revenue
from dbo.EV_Charging
group by month
order by Month desc;


SELECT COUNT(session_ID) as Total_Sessions,
charging_Hour as Peak_Hour
from dbo.EV_Charging
group by Charging_Hour
order by Total_Sessions DESC

select (Vehicle_Type) as vehicles,
sum(Charging_Cost_INR) as Total_Revenue
from dbo.EV_Charging
group by Vehicle_Type
order by Total_Revenue desc


select AVG(Charging_Duration_Minutes) as Charging_duration,
vehicle_Type as Vehicle 
from dbo.EV_Charging
group by Vehicle_Type
order by Charging_duration

select SUM(Energy_Consumed_kwh) as highest_total_energy,
Vehicle_Type as vehicle
from dbo.EV_Charging
group by Vehicle_Type
order by highest_total_energy

--subquery
select top 5 station_ID,
sum(charging_cost_INR) as Highest_revenue
from dbo.EV_Charging
group by Station_ID
having SUM(charging_cost_INR)>
(
select AVG(station_revenue)
from(select station_ID,
sum(charging_cost_INR) as station_revenue
from dbo.EV_Charging
group by Station_ID
)as t
)
order by Highest_revenue desc

--

select vehicle_Type,
SUM(Energy_consumed_kwh) as Total_energy_consumed
from dbo.EV_Charging
group by Vehicle_Type
having SUM (Energy_consumed_kwh)>
(
select AVG(Total_energy_consumed)
from(select vehicle_Type,
SUM(Energy_consumed_kwh) as Total_energy_consumed
from dbo.EV_Charging
group by Vehicle_Type
)as t
)
order by Total_energy_consumed desc

--

with Monthly_Revenue as(
   select 
      MONTH,
	  month_name,
	  SUM(charging_cost_inr) as Total_Revenue
	  from dbo.EV_Charging
	  group by Month,Month_Name
 )
 select MONTH,month_name,Total_Revenue,
 LAG(Total_Revenue) over (order by Month) as Previous_Month_Revenue,

 (
   (Total_Revenue-LAG(Total_Revenue) over (Order by month))*100.0/LAG(Total_Revenue) over (Order by month)
   )as MoM_Growth_Percentage
   from Monthly_Revenue
   order by Month

--
with Monthly_vehicle_revenue as(
  select 
    MONTH,
	Month_name,
	vehicle_type,
sum(Charging_cost_inr) as Total_Revenue
from dbo.EV_Charging
group by Month,Month_Name,Vehicle_Type
),
Ranked_Data as (
    select *,
	       RANK() over (
		   partition by month
		   order by Total_Revenue desc
		   )as revenue_rank
		   from Monthly_vehicle_revenue
		   )
select * from Ranked_Data
where Revenue_Rank <=2
order by Month,Revenue_rank





