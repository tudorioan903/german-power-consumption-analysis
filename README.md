## German Power Consumpiton: Impact of COVID-19, the Energy Crisis, and the Nuclear Phase-Out (2019-2024)

### Project Overview
This project analyzes electricity consumption in Germany using hourly data from 2015 to 2026, with a focus on major real-world events such as the COVID-19 pandemic, the 2021–2022 energy crisis, and the nuclear phase-out in 2023.

The analysis was conducted using SQL for data cleaning and exploration, followed by visualization to identify trends, seasonal patterns, and structural changes in energy usage.

Key findings highlight a noticeable drop in consumption during COVID-19 lockdowns, shifts in daily demand patterns, and changes in the energy mix following the nuclear shutdown.


### Data Source
The dataset used in this project is based on publicly available electricity data from the European Network of Transmission System Operators for Electricity (ENTSO-E).

* Original source: https://transparency.entsoe.eu/
* Processed dataset: https://www.kaggle.com/datasets/samithsachidanandan/german-power-consumption

The ENTSO-E Transparency Platform provides official, high-resolution data on electricity generation, consumption, and forecasts across European countries.

The Kaggle dataset was used as a structured and analysis-ready version of the original data.


### Project Tools

SQL Server Management Studio (SSMS) 22 – Connecting, querying and managing the dataset

SQL Server Express – Local SQL environment for restoring and working with the database

Kaggle Dataset – Sample dataset used for analysis

Power BI Desktop – Building the dashboard based on SQL insights

## 🔌 Importing the Dataset to SSMS 22🗄️
- I will start by connecting to the SQL Server Express
  
<img width="613" height="746" alt="1 - Connecting to SQLEXPRESS" src="https://github.com/user-attachments/assets/8931946b-c29a-4003-83c9-4b74379031ed" />

- Importing the .csv file and making sure everything goes smooth
  
<img width="934" height="543" alt="2 - Importing the  csv file" src="https://github.com/user-attachments/assets/a198793f-4b55-4733-aa22-f4150547ba3e" />

- ✅ I now have the table available for querying
  
<img width="1419" height="670" alt="3 - The data is here" src="https://github.com/user-attachments/assets/6e4d3afe-1d69-4367-8ba9-6ba34858c005" />

