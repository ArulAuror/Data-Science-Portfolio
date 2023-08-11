## Scenario
Airbnb  is an American vacation rental online marketplace  offers arrangement for lodging, primarily homestays, or tourism experiences. Since 2008, guests and hosts have used Airbnb to travel in a more unique, personalized way. As part of the Airbnb Inside initiative, dataset (from kaggle.com) describes the listing activity of homestays in Seattle, WA.
Combining city-level data on Airbnb availability, property configurations, host details, amenities can help us identify which factors play a crucial role in engaging more customers and servicing the Airbnb customers in a better way.

## Relational Data Model
### Assumptions
1.	The columns in listing file is collected from various other sources including but not limited to CDC (Centre for Disease Control and Prevention). Because of uncertainity of source columns in listings table, all the columns except for host subset are considered independent to achieve 3NF.

### Reasons why the data model is in 3NF?
•	All the tables of the data model are in second normal form and there is no transitive dependency. 
•	Considering the assumption-1 mentioned earlier, every non-key attribute of each table of the data model is functionally dependent only on the complete primary key and every attribute contains only a single atomic value.
•	Considering the assumption-1, in addition, every non-key attribute is independent of any other non-key attribute.



