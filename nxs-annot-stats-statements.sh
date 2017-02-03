SQL_EXPORT="
select annotation_category, count(distinct annotation_id) as cnt
from nxflat.entry_mapped_statements
group by annotation_category
order by cnt desc
"
if [ -z "$1" ]
then 
	psql -d nxflat -c "COPY ($SQL_EXPORT) TO STDOUT WITH CSV HEADER" 
else	
	psql -U postgres -h $1 -d nxflat -c "COPY ($SQL_EXPORT) TO STDOUT WITH CSV HEADER"
fi
