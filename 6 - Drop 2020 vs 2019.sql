SELECT 
    AVG(CASE WHEN year = 2019 THEN load_actual_load END) as avg_2019,
    AVG(CASE WHEN year = 2020 THEN load_actual_load END) as avg_2020,
    (
        AVG(CASE WHEN year = 2020 THEN load_actual_load END) -
        AVG(CASE WHEN year = 2019 THEN load_actual_load END)
    ) * 100.0 /
    AVG(CASE WHEN year = 2019 THEN load_actual_load END) as pct_change
FROM clean_energy;