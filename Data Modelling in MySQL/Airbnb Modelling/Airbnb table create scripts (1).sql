use airbnb;
create table listing  as 
(select
id as listing_id
,scrape_id
,name
,summary
,last_scraped
,space
,description
,experiences_offered
,notes
,transit
,host_id
,requires_license
,license
,jurisdiction_names
,instant_bookable
,cancellation_policy
,calculated_host_listings_count
,property_type
,room_type
,accommodates
,bathrooms
,bedrooms
,beds
,bed_type
,square_feet
,street
,neighbourhood
,neighbourhood_cleansed
,neighbourhood_group_cleansed
,city
,state
,zipcode
,market
,smart_location
,country_code
,country
,latitude
,longitude
,is_location_exact
,neighborhood_overview
,price
,weekly_price
,monthly_price
,security_deposit
,cleaning_fee
,minimum_nights
,maximum_nights
,calendar_updated
,has_availability
,availability_30
,availability_60
,availability_90
,availability_365
,calendar_last_scraped
,number_of_reviews
,first_review
,last_review
,review_scores_rating
,review_scores_accuracy
,review_scores_cleanliness
,review_scores_checkin
,review_scores_communication
,review_scores_location
,review_scores_value
,reviews_per_month
,guests_included
,extra_people
,require_guest_profile_picture
,require_guest_phone_verification
,listing_url
,thumbnail_url
,medium_url
,picture_url
,xl_picture_url
from listings );



create table host as (
select distinct host_id
,host_url
,host_name
,host_since
,host_location
,host_about
,host_response_time
,host_response_rate
,host_acceptance_rate
,host_is_superhost
,host_thumbnail_url
,host_picture_url
,host_neighbourhood
,host_listings_count
,host_total_listings_count
,host_has_profile_pic
,host_identity_verified from listings );

create table verifications as (
select distinct host_id, host_verifications from listings
);
ALTER TABLE verifications ADD COLUMN host_verifications_id INT AUTO_INCREMENT UNIQUE FIRST;

create table host_verifications as (
select host_verifications_id, host_verifications as host_verifications_name from verifications
);
create table amenities as (
select distinct amenities from listings
);
alter table amenities add column amenities_id int auto_increment unique first;



create table bed_type as (
select  distinct bed_type from listings
);
alter table bed_type add column bed_type_id int auto_increment unique first;

create table room_type as (
select  distinct room_type as room_type_name from listings
);
alter table room_type add column room_type_id int auto_increment unique first;

create table property_type as (
select  distinct property_type as property_type_name from listings
);
alter table property_type add column property_type_id int auto_increment unique first;

create table reviewer as (
select distinct reviewer_id , reviewer_name from reviews
);

create table review as (
select id as review_id , listing_id, reviewer_id, comments from reviews);


create table property_amenities as (
select distinct b.amenities_id, a.id  from listings a join amenities b on a.amenities = b.amenities
);
