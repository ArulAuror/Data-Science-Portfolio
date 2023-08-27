*Group 12 Homework 5, Question 2; 
 
/* (a) */ 
proc logistic data = crackers_formatted; 
strata obs; 
class Crackers(ref = 'Private') / param=glm; 
model Choice(event='1') = Crackers Price Crackers*Disp Crackers*Feat; 
where selected=1; 
run; 
 
 
/* (b) */  
proc mdc data = crackers_formatted; 
id obs; 
class Crackers; 
model Choice = Crackers Price Crackers*Disp Crackers*Feat/ type = clogit nchoice = 4; 
restrict CrackersPrivate = 0; 
where selected=1; 
run; 
 
 
/* (c) */  
data crackers_reformatted; 
set crackers_formatted; 
if selected=0 then choice_training=.; else choice_training=choice; 
run; 
 
proc mdc data = crackers_reformatted; 
id obs; 
class Crackers; 
model choice_training  = Crackers Price Crackers*Disp Crackers*Feat/ type = clogit nchoice = 4; 
restrict CrackersPrivate = 0; 
output out=crackers_pred_data pred=crackers_pred; 
run; 
