SELECT 
    year,
    AVG(load_actual_load) as avg_load
FROM [german_power_analysis].[dbo].[clean_energy]
GROUP BY year
ORDER BY year;
