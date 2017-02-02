SQL_EXPORT="
select annotation_category, count(annotation_category)
from nxflat.entry_mapped_statements
group by annotation_category
order by 2 desc
"
if [ -z "$1" ]
then 
	psql -d nxflat -c "COPY ($SQL_EXPORT) TO STDOUT WITH CSV HEADER" 
else	
	psql -h $1 -d nxflat -c "COPY ($SQL_EXPORT) TO STDOUT WITH CSV HEADER"
fi
