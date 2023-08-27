*Group 12 Homework 4, Question 3; 

/* question 3 */ 
/* Creating ROC table for logit model estimated in Q1-C */ 
proc logistic inmodel=Logitmodel; 
 score data=heinzhunts_test outroc=heinzhunts_logit_roc; 
run; 
data heinzhunts_calculations; 
set heinzhunts_logit_roc; 
TotalCost = _FALPOS_*(.25)+_FALNEG_*(1);
run; 
/*The probability threshold of 0.052318 has the lowest cost of $13.50  */ 
proc sql outobs=1; 
select TotalCost as 'Least Total Cost'n, _PROB_ from work.heinzhunts_calculations order by TotalCost asc; 
quit;
