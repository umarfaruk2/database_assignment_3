// query 1

select u.name , v.name, b.start_date, b.end_date, b.status from bookings as b
join users as u on b.user_id = u.user_id
join vehicles as v on b.vehicle_id = v.vehicle_id


// query 2


select * from vehicles where not exists (select vehicle_id from bookings where vehicles.vehicle_id = bookings.vehicle_id)


// query 3

select * from vehicles where type = 'car' and status = 'available'


// query 4

select v.name as vehicle_name , count(*) as total_bookings from bookings as b
join vehicles as v on b.vehicle_id = v.vehicle_id
group by v.name
having count(*) > 2










