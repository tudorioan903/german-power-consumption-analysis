SELECT 
    COUNT(*) as total_rows,
    COUNT(load_actual_load) as non_null_load
FROM power_consumption_germany;

SELECT *
FROM power_consumption_germany
WHERE load_actual_load IS NULL;