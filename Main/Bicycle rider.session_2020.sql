SELECT ride_id, COUNT(*)
FROM daily_ryder_2020
GROUP BY ride_id
HAVING COUNT(*) > 1
LIMIT 100

ALTER TABLE daily_ryder_2020
ALTER COLUMN ride_id SET NOT NULL


ALTER TABLE daily_ryder_2020
ADD CONSTRAINT daily_ryder_2020_pkey PRIMARY KEY (ride_id)

SELECT column_name, data_type
FROM information_schema.columns
WHERE table_name = 'daily_ryder_2020'

SELECT kcu.column_name
FROM information_schema.table_constraints tc
JOIN information_schema.key_column_usage kcu ON kcu.constraint_name = tc.constraint_name
WHERE tc.constraint_type = 'PRIMARY KEY' AND tc.table_name = 'daily_ryder_2020'