*Group 9 Homework 2, Question 2; 
/* (a) */ 
data vite; 
set input.vite; 
run; 
proc sort data=vite; 
by ID Treatment; 
run; 
proc transpose data=vite out=plaque_size(drop=_: col2);                                                                                        
by ID Treatment;                                                                                                                                
   var Plaque;  
run; 
data plaque_size; 
set plaque_size (rename= (COL1= plaque_baseline));   
data plaque_size;  
set plaque_size (rename= (COL3= plaque_after_second_visit));  
run; 
proc ttest data=plaque_size(where=(Treatment=1)) alpha=0.05; 
paired plaque_baseline*plaque_after_second_visit; 
run; 
 
/* (b) */ 
data plaque_difference; 
set plaque_size; 
plaque_reduction = plaque_baseline-plaque_after_second_visit; 
run; 
proc ttest data=plaque_difference alpha=0.05; 
class Treatment; 
var plaque_reduction; 
run; 

/* (C) */  
*No code is used to answer part (C); 
 
/* (d) */ 
proc means data=vite noprint; 
var Smoke; 
by ID Treatment; 
output out=smoke_summary(drop=_:) mean=; 
run; 
proc print data=smoke_summary; 
run; 
proc ttest data=smoke_summary alpha=0.05; 
class Treatment; 
var smoke; 
run; 

proc means data=vite noprint; 
  var Alcohol; 
  by ID Treatment; 
  output out=alcohol_summary(drop=_:) mean=; 
run; 
proc print data=alcohol_summary; 
run; 
proc ttest data=alcohol_summary alpha=0.05; 
class Treatment; 
var Alcohol; 
run; 
