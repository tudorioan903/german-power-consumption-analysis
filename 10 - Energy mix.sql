SELECT 
    YEAR(date) as year,
    MONTH(date) as month,
    AVG(generation_nuclear_actual_aggregated) as nuclear,
    AVG(generation_fossil_brown_coal_lignite_actual_aggregated) as lignite,
    AVG(generation_fossil_gas_actual_aggregated) as gas,
    AVG(generation_wind_onshore_actual_aggregated) as wind_onshore,
    AVG(generation_wind_offshore_actual_aggregated) as wind_offshore,
    AVG(generation_solar_actual_aggregated) as solar
FROM your_table
WHERE YEAR(date) IN (2022, 2023, 2024)
GROUP BY YEAR(date), MONTH(date)
ORDER BY year, month;