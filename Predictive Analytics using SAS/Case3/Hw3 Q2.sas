
*Group 9 Homework 3, Question 2; 

*Outlliers Detection;
*Cook D Test;
proc reg data = Videogamesales_main_new;
 model Global_Sales = Critic_Score User_score Critic_Count User_Count DS GBA GC PC PS2 PS3 PSP Wii X360;
 output out = regdata cookd = cookd student=sresiduals; 
 run;
quit;
*give less weigth to outliers we find all results significant -userscore still negative though it appears critic score and count have the biggest postive impact on sales;
proc robustreg data=Videogamesales_main_new fwls method=mm;
  model Global_Sales = Critic_Score User_score Critic_Count User_Count DS GBA GC PC PS2 PS3 PSP Wii X360;
 output out = robregmm weight = wgt outlier = ol;
run;
*when we run the analysis we find many outliers;
*426 observations are considered outliers, almost 10%!!!(4413-3987=426)this can be found by sorting ol numerically;
proc sort data=Robregmm;
by ol;
run;

/* Multicollinarity detection */
/* Correlation matrix */
proc corr data = Videogamesales_main_new;
 var Critic_Score User_score Critic_Count User_Count;
run;
/* regression with collinearity diagnostics and vif */
proc reg data = Videogamesales_main_new;
 model Global_Sales = Critic_Score User_score Critic_Count User_Count / collinoint vif; 
run;

/* Heteroscedasticity detection */
/* How does global sales vary with each primary variable */
proc reg data=Videogamesales_main_new;
 model Global_Sales = Critic_Score User_score Critic_Count User_Count / hcc spec;
run;
/* using a log transform for the y variable*/
data Videogamesales_main_hetero;
 set Videogamesales_main_new;
 log_Global_Sales = log(Global_Sales);
run;
proc reg data=Videogamesales_main_hetero;
 model log_Global_Sales = Critic_Score User_score Critic_Count User_Count DS GBA GC PC PS2 PS3 PSP Wii X360 / hcc spec;
run;
Quit;

/* Normality of error term detection*/
proc univariate data=regdata normal;
 var sresiduals; 
 histogram sresiduals / normal kernel;
run;
proc univariate data=regdata normal;
 var sresiduals; 
 histogram sresiduals / normal kernel;
 where cookd < 4 / 4413;
run;













