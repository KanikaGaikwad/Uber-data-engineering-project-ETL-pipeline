select * from golden-keel-425913-p4.uber_de.fact_table
limit 5;

select VendorID, avg(fare_amount) from golden-keel-425913-p4.uber_de.fact_table
group by VendorID;


select * from golden-keel-425913-p4.uber_de.passenger_count_dim;


-- Average passenger count by fare amount and tip
select p.passenger_count, round(sum(f.total_amount),2) as total, round(avg(f.total_amount),2) as avg_amount,
round(avg(f.tip_amount),2) as avg_tip
from golden-keel-425913-p4.uber_de.fact_table f 
join golden-keel-425913-p4.uber_de.passenger_count_dim p
on f.passenger_count_id = p.passenger_count_id
group by p.passenger_count
order by 4 desc;


-- Top 10 pickup locations by number of trips
select p.pickup_location_id, count(trip_distance_id) as trip_count
from golden-keel-425913-p4.uber_de.fact_table f join 
golden-keel-425913-p4.uber_de.pickup_location_dim p 
on f.pickup_location_id = p.pickup_location_id
group by p.pickup_location_id
order by 2 desc
limit 10;

# Trips by Passenger Counts
select p.passenger_count, sum(trip_distance_id) as total_trips
from golden-keel-425913-p4.uber_de.fact_table f 
join golden-keel-425913-p4.uber_de.passenger_count_dim p
on f.passenger_count_id = p.passenger_count_id
group by p.passenger_count
order by 2 desc;

-- Avg fare amount by hour of the day

select d.drop_hour, round(avg(f.fare_amount),2) as avg_fare
from `uber_de.fact_table` f join
`uber_de.datetime_dim` d
on f.datetime_id = d.datetime_id
group by d.drop_hour
order by 2 desc;

--
select d.pick_hour, round(avg(total_amount),2) as avg_amount
from `uber_de.fact_table` f join `uber_de.datetime_dim` d
on f.datetime_id = d.datetime_id
group by d.pick_hour
order by 2 desc;

select * from `uber_de.trip_distance_dim`
where trip_distance =0;

select f.total_amount, t.trip_distance
from `uber_de.trip_distance_dim` t right join `uber_de.fact_table` f
on t.trip_distance_id = f.trip_distance_id
where f.total_amount = 0;


select * from `uber_de.passenger_count_dim`;

