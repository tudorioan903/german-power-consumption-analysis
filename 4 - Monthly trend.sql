SELECT 
    year,
    month,
    AVG(load_actual_load) as avg_load
FROM clean_energy
GROUP BY year, month
ORDER BY year, month;