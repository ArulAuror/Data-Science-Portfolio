
# Data Requirements #

A large computer repair company is looking to expand their business into retail. Company ABC plans to buy parts, assemble and sell computer equipment that includes desktops, monitors/displays, laptops, mobile phones and tablets. It also plans to sell maintenance plans for the equipment it sells that includes 90-day money back guarantee, 12-month cost-free repairs for any manufacturing defects, and annual subscription for repairs afterwards at $100 dollars per year. As part of a sales & marketing campaign to generate interest, TTi is looking to sell equipment in 6 different packages: 1. Desktop computer, monitor and printer 2. Laptop and printer 3. Laptop and Phone 4. Tablet and Phone 5. Desktop computer, monitor and tablet 6. Desktop computer, monitor and phone ABC plans to sell these packages to consumers and to small-and-medium businesses (SMB). It also plans to offer 3-year lease terms to SMB customers wherein they can return all equipment to the company at the end of 3 years at no cost as long as they agree to enter into a new 3-year lease agreement. ABC also plans to expand its sales to neighboring states including Oklahoma, Louisiana, Missisippi, Alabama and Florida. ABC has rented several warehouses to hold its inventory and entered into contracts with several manufacturers in China and Taiwan to obtain high-quality parts at a reasonable price. It has also hired 5 sales people in each of the states mentioned previously, and doubled its repair workforce to meet the anticipated increase in business. ABC has realized that it can no longer use Excel spreadsheets to meet their data and information needs. It is looking to use open source and has decided to develop an application using Python and MySQL. Your team has been brought in to design a database that can meet all of its data needs.


Parts of a computer - Fields/Dimensions
Motherboard
Power supply
CPU
RAM
Hard drive and SSD
Video card
Optical drives
IO devices
Parts of a laptop
Storage device (hdd, sdd)
Memory
Media Drive (CD, DVD, Bray)
Battery
System Fan
AC adapter and cable
Heatsink
Motherboard
WLAN Card
WWAM card
Bluetooth card
Keyboard
LCD
Parts of a mobile phone
Antenna Switch
P.F.O
RF IC/ Hagar/ Network IC
Crystal Oscillator
VCO
RX Filter
TX filter
ROM
RAM
Flash IC
Power IC
Charging IC
CPU
Logic IC
Video IC
Parts of a tablet
Touchscreen
LCD
Motherboard
Rechargeable battery

Tablet casing
• Buy parts, assemble, sell computer equipment
• Maintenance plans – 90day money back guarantee, Cost free repairs for 12 months warranty, Annual subscription for repairs afterwards at $100 per year
• Consumers and SMB (3year lease agreement with no cost if + 3 years)
• Expand sales to neighboring states including Oklahama, Lousianna, Missisippi, Alabama and Florida.
• Rented warehouses for its inventory, contracts with several manufacturers like china and Taiwan
• Hired 5 sales people in abv states and 2X its repair workforce
• 1. Desktop computer, monitor and printer 2. Laptop and printer 3. Laptop and Phone 4. Tablet and Phone 5. Desktop computer, monitor and tablet 6. Desktop computer, monitor and phone

Inventory warehouses on rent – China, Taiwan part suppliers – Buy parts – assemble – sell to consumers and SMB – 1. Lease agreement 2. Maintenance plans 3. Expand sales and hire 5 sales ppl and 2X its repair force
Inventory warehouses
Manufacturers or Suppliers (China, Taiwan)
TTi company sells equipment packages
Consumers
SMB
Sales (5 States) - hire and repair
Maintenance plans



For the above requirement, I ended up creating the below ERD diagram
## ERD Diagram modelled for the above requirement is as follows using MySQL Workbench ##
![ERD](https://github.com/ArulAuror/Data-Science-Portfolio/blob/main/Data%20Modelling%20in%20MySQL/ERD_DataModel.png?raw=true)
