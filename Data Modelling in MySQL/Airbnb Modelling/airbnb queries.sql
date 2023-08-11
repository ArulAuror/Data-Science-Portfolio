select * from listing;
SELECT count(*) AS columncount FROM information_schema.columns
WHERE table_name = 'listing';
ALTER table listing add primary key(listing_id);
select * from host;
ALTER table host add primary key (host_id);
select * from host where host_id = 5177328;
select count(*) from host;
select count(distinct host_id) from listings;
INSERT INTO host (host_id, host_url, host_name, host_since, host_location, host_about, host_response_time, 
host_response_rate, host_acceptance_rate, host_is_superhost, host_thumbnail_url, host_picture_url, host_neighbourhood, 
host_listings_count, host_total_listings_count, host_has_profile_pic, host_identity_verified) 
VALUES
('5177328', 'https://www.airbnb.com/users/show/5177328', 'Andrea', '2013-02-21',
 'Seattle, Washington, United States', 'Living east coast/left coast/overseas.  Time is short & it\'s a big world. ',
 'within an hour', '98%', '100%', 't',
 'https://a0.muscache.com/ac/users/5177328/profile_pic/1361540767/original.jpg?interpolation=lanczos-none&crop=w:w;*,*&crop=h:h;*,*&resize=50:*&output-format=jpg&output-quality=70', 'https://a0.muscache.com/ac/users/5177328/profile_pic/1361540767/original.jpg?interpolation=lanczos-none&crop=w:w;*,*&crop=h:h;*,*&resize=225:*&output-format=jpg&output-quality=70',
 'Queen Anne', '6', '6', 't', 't');

SET SQL_SAFE_UPDATES = 0;
delete from host where
host_id in (
select host_id from 
( select host_id, row_number() OVER 
( partition by host_id order by host_id ) as row_num 
from host ) t 
where row_num > 2);

DROP table verifications;

select * from verifications;
alter table verifications drop column host_verifications;
select * from verifications;
select * from host_verifications;
select * from amenities;
select * from bed_type;
ALTER table bed_type add primary key(bed_type_id);
alter table bed_type rename column bed_type to bed_type_name;
select * From room_type;
select * from property_type;
select count(*) from reviews;
select count(distinct amenities_id) from amenities;
create table property_amenities as (
select distinct a.id , b.amenities_id  from listings a join amenities b on a.amenities = b.amenities
);
select * from listing;

update listing set weekly_price = substr(weekly_price,2);
update listing set monthly_price = substr(monthly_price,2);
update listing set security_deposit = substr(security_deposit,2);
update listing set cleaning_fee = substr(cleaning_fee,2);
update listing set price = substr(price,2);
update listing set extra_people = substr(extra_people,2);
