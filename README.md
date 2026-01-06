# NYC-Motor-Vehicle-Collisions-Analysis-
This project analyzes motor vehicle collision data reported by the New York City Police Department between January and August 2020. The goal is to identify temporal patterns, high-risk locations, and major contributing factors to accidents, including fatal collisions, to support data-driven road safety decisions.

## Project Objectives
-	Analyze accident trends by month
-	Identify peak accident times by day and hour
-	Determine streets with the highest accident frequency
-	Identify the most common contributing factors
-	Generate additional insights to improve road safety

## Dataset Overview
NYC Motor Vehicle Collisions (Jan–Aug 2020), each record represents one reported collision

Source : NYC Open Data – Motor Vehicle Collisions recorded by New York Police Department from January-August 2020

Records : [238,421]

Key fields include:
-	Date & time
-	Borough & street name
-	Latitude & longitude
-	Vehicles involved
-	Injuries & fatalities
-	Contributing factors (Vehicle 1)

## Data Preparation
-	Removed incomplete and duplicate records
-	Standardized date and time formats
-	Filtered fatal accidents for focused analysis

## Tools & Technologies
-	SQL – Aggregation and Analysis
-	Power BI – Dashboard and visualization

## Business & Policy Impact
-	Helps city planners identify high-risk periods and locations
-	Supports targeted traffic enforcement strategies
-	Provides insights for public road safety campaigns

## Key Questions & Findings
### 1. Compare the % of total accidents by month. Do you notice any seasonal patterns?

![monthly trend](https://github.com/Fuad-Nasirudeen/NYC-Motor-Vehicle-Collisions-Analysis-/blob/main/monthly%20accidents.jpg)

March recorded the highest volume of accidents, representing 10.53% of the total sample. There was a significant decline following March, with April dropping to 8.04%. This correlates with the onset of COVID-19 lockdown measures in NYC, which significantly reduced traffic volume. Accidents remained relatively stable from June through October, averaging approximately 7.9% of total annual incidents.

### 2. When do accidents occur most frequently (day & hour)?

By breaking down data by the day of the week and hour of the day, a clear "Danger Zone" was identified: 
The Most Frequent Time: Accidents occur most frequently on Fridays at 5:00 PM (17:00).
- Peak Period: The 3:00 PM – 6:00 PM window (Afternoon Rush Hour) across all weekdays accounts for the highest density of collisions.
- Weekend Pattern: Unlike weekdays, Saturday and Sunday see a spike in late-night/early-morning incidents (Midnight – 2:00 AM).

### 3. Which street has the most accidents, and what % of total does it represent?

- Top Street: Broadway and Belt Parkway was identified as the streets with the highest number of reported accidents.
- Borough Focus: High-capacity expressways and major commercial corridors in Brooklyn and Queens consistently appear as collision hotspots.

### 4. What is the most common contributing factor? What about fatal accidents?

- Primary Factor (General): Driver Inattention/Distraction remains the #1 contributing factor for collisions involving Vehicle 1.
- Fatal Accidents: When filtering for fatal accidents specifically, the contributing factors shift significantly toward Unsafe Speed and Driver Inattention/Distraction, highlighting a major difference between minor fender-benders and lethal crashes. It is also noticed that pedestrians account for a high number of fatalities. 

## Recommendations
- Targeted Enforcement: Increase traffic police presence on major expressways during the Friday 3:00 PM – 6:00 PM window.
- Infrastructure Review: The "Top Street" identified requires a safety audit to determine if poor lighting, signage, or road design is contributing to the high accident rate.
- Public Awareness: Launch campaigns specifically targeting warnings against “Over speeding” and "Driver Distraction" as it is the leading cause of fatal incidents.

## Limitations
-	Limited to January–August 2020
-	External factors (COVID-19 restrictions) may affect trends
-	Reporting accuracy depends on police records

## Conclusion
NYC motor vehicle collisions are highly influenced by time of day, traffic volume, and driver behavior. Targeted interventions during peak hours and on high-risk streets can significantly reduce accident rates.

