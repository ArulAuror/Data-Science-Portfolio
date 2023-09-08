https://github.com/ArulAuror/Data-Science-Portfolio/assets/76837847/8bbad997-4dab-4598-a02f-f6c61b711931?width=100&height=100

## Airline Data Challenge
__Goal__ To recommend top 5 round-trip routes between medium and large US airports for an airline company looking to enter into US domestic market by profitability analysis. Calculated the total profit, revenue, cost and breakeven based on the provided instructions.

__Client's Moto__ "On time for you"

__Dataset for analysis__ 2019 Q1 flights data

### Quality Check:
![image](https://github.com/ArulAuror/Data-Science-Portfolio/assets/76837847/1bd4312e-13d0-4d53-af33-031839edab6f)

## TOP 10 BUSIEST U.S. ROUND-TRIP ROUTES 
<img src='https://github.com/ArulAuror/Data-Science-Portfolio/assets/76837847/054e580a-f0c3-47b5-aac1-a75f7b9789cd' width=800>

## RECOMMENDED ROUTES – KEY FACTORS
<img src='https://github.com/ArulAuror/Data-Science-Portfolio/assets/76837847/508fa393-f56e-4124-b481-6547fa065068' width=800>

## RECOMMENDED 5 ROUND-TRIP ROUTES
![image](https://github.com/ArulAuror/Data-Science-Portfolio/assets/76837847/194fa26d-cd61-491f-ab78-603a48284bf7)

## TOP 10 PROFITABLE ROUND-TRIP ROUTES
<p float='left'>
<img src='https://github.com/ArulAuror/Data-Science-Portfolio/assets/76837847/de000178-6ab5-4ccc-94e6-2c7250507d60' width=800>
<img src='https://github.com/ArulAuror/Data-Science-Portfolio/assets/76837847/8cc85ab5-d6f3-4fa6-8398-7847cdbd0511' width=100>
</p>


## COST BENEFIT ANALYSIS
![image](https://github.com/ArulAuror/Data-Science-Portfolio/assets/76837847/150e55da-1648-4d27-ac33-334d5ab0a9e7)

#### Data Munging:
__Merge 1 :__ I joined the filtered airport data frame with that of tickets data frame by merging by origin and destination fields in tickets to that of IATA code in airport which gives us the fare details for passengers travelling between medium and large US domestic airports.  For the round-trip fare tickets, I further grouped at origin-destination pair level for each leg of travel to find out average round trip fare. Since LAS – LAX and LAX-LAS correspond to single round trip, we have averaged the fares to find global average for each unique round trip.

__Merge 2 :__ I grouped the flights data frame at origin- destination pair level i.e., for each travel leg to find out total flights, average occupancy rate, average arrival departure delay, average distance. We are considering only the legs which has more than 50 flights in Q1 2019. I merged this data frame with that of output from “Merge 1” on origin and destination. I merged in such a way that each round trip of tickets data in “Merge 1” data frame is joined with corresponding two legs of that round trip in grouped flights data frame. I further grouped the flights data frame at each round-trip level to find the average flights, average occupancy rate, average arrival departure delay, total distance for both the legs of that round trip.
I calculated the total profit, revenue, cost and breakeven based on the provided instructions.

### Decision:
Employ flights in routes with high on time performance (OTP%). On analysis, medium-long hauls with less carriers have high OTP%

### Future KPIs to track
<img src='https://github.com/ArulAuror/Data-Science-Portfolio/assets/76837847/3d2434b9-ff1f-4ca9-81d2-978e20b2c6a0' width=600/>














