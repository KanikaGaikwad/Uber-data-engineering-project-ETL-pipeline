CREATE OR REPLACE TABLE golden-keel-425913-p4.uber_de.analytics_table as (
select
f.VendorID,
d2.tpep_pickup_datetime,
d2.tpep_dropoff_datetime,
p1.passenger_count,
t.trip_distance,
r.rate_code_name,
p3.pickup_latitude,
p3.pickup_longitude,
d1.dropoff_latitude, 
d1.dropoff_longitude,
p2.payment_type_name,
f.fare_amount,
f.extra,
f.mta_tax, f.tip_amount,
f.tolls_amount, f.improvement_surcharge,f.total_amount
from `uber_de.fact_table` f join `uber_de.passenger_count_dim` p1
on f.passenger_count_id = p1.passenger_count_id
join `uber_de.trip_distance_dim` t 
on t.trip_distance_id = f.trip_distance_id
join `uber_de.rate_code_dim` r 
on r.rate_code_id = f.rate_code_id
join `uber_de.payment_type_dim` p2 
on p2.payment_type_id = f.payment_type_id 
join `uber_de.dropoff_location_dim` d1 
on d1.dropoff_location_id = f.dropoff_location_id
join `uber_de.pickup_location_dim` p3 
on p3.pickup_location_id = f.pickup_location_id 
join `uber_de.datetime_dim` d2 
on d2.datetime_id = f.datetime_id
);
