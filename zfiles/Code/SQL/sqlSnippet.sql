--##################################################

-- Die Tabellengößen aus der Postgre_size Tabelle abfragen,
SELECT
   relname as "Table",
   pg_size_pretty(pg_total_relation_size(relid)) As "Size",
   pg_size_pretty(pg_total_relation_size(relid) - pg_relation_size(relid)) as "External Size"
FROM pg_catalog.pg_statio_user_tables as cat
--,wenn der Name der Tabelle in dieser Liste steht 
where cat.relname LIKE any('{a,
							by,
							c,
							d}'::text[])
ORDER by pg_total_relation_size(relid) desc ;

--##################################################