*Group 12 Homework 4, Question 1; 

LIBNAME HW4 "E:\Users\DXM200017\Documents\My SAS Files\Homework 4"; 

data heinzhunts; 
 set HW4.heinzhunts; 
run; 

/* question 1 */ 
/*a*/ 
data heinzhunts; 
 set heinzhunts; 
LogPriceRatio = log (PriceHeinz/PriceHunts); 
run; 

/* B */ 
/* Create training and test datasets. 80% of sample in training  */ 
proc surveyselect data=heinzhunts out=heinzhunts_sampled outall samprate=0.8 seed=10; 
run; 

data heinzhunts_training heinzhunts_test; 
 set heinzhunts_sampled; 
 if selected then output heinzhunts_training; 
 else output heinzhunts_test; 
run; 

/* C */ 
proc logistic data= heinzhunts_training outmodel=Logitmodel; 
 logit: model heinz (event='1') = LogPriceRatio DisplHeinz FeatHeinz DisplHunts FeatHunts DisplHeinz*FeatHeinz DisplHunts*FeatHunts; 
run; 

/* D */ 
/*Interpretation in report, no code.*/ 
