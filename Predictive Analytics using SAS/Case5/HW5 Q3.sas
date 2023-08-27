*Group 12 Homework 5, Question 3; 
 
proc sql; 
create table pred as select a.obs, a.crackers_pred, b.crackers as 'predicted_brand'n from (select obs, max(crackers_pred) as 'crackers_pred'n from work.crackers_pred_data group by obs) as a, crackers_pred_data as b where a.obs=b.obs and a.crackers_pred=b.crackers_pred ; 
create table final_results as select pred.obs, pred.predicted_brand, actuals.actual_brand from pred, (select obs, crackers as 'actual_brand'n from work.crackers_pred_data where choice=1) as actuals where pred.obs=actuals.obs; 
quit; 
 
proc freq data=final_results; 
tables actual_brand*predicted_brand; 
run; 

proc freq data=final_results; 
tables actual_brand predicted_brand; 
run; 

