*Group 12 Homework 5, Question 1; 
/* (a) */ 
 
LIBNAME crackers 'E:\Users\DXM200017\Documents\My SAS Files\Homework 5'; 
data crackers; 
set crackers.crackers_hw5; 
run; 
 
proc surveyselect data=crackers out=crackers_sampled outall samprate=0.8 seed=100; 
run; 
 
/* (b) */  
/*Formula written into report*/
 
/* (c) */  
 
proc sql; 
create table crackers_formatted as 
select obs, Selected, Private as 'Choice'n, 'Private' as 'Crackers'n, PricePrivate as 'Price'n, FeatPrivate as 'Feat'n, DisplPrivate as 'Disp'n from work.crackers_sampled 
UNION 
select obs, Selected, Sunshine as 'Choice'n, 'Sunshine' as 'Crackers'n, PriceSunshine as 'Price'n, FeatSunshine as 'Feat'n, DisplSunshine as 'Disp'n from work.crackers_sampled 
UNION 
select obs, Selected, Keebler as 'Choice'n, 'Keebler' as 'Crackers'n, PriceKeebler as 'Price'n, FeatKeebler as 'Feat'n, DisplKeebler as 'Disp'n from work.crackers_sampled 
UNION 
select obs, Selected, Nabisco as 'Choice'n, 'Nabisco' as 'Crackers'n, PriceNabisco as 'Price'n, FeatNabisco as 'Feat'n, DisplNabisco as 'Disp'n from work.crackers_sampled 
quit; 
