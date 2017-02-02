SQL_EXPORT="
select entry_accession, gene_name, annotation_category, location_begin_master, location_end_master, annotation_name, evidence_quality, evidence_intensity, variant_original_amino_acid, variant_variation_amino_acid, reference_accession, subject_annotation_ids, object_annotation_ids, annotation_id
from nxflat.entry_mapped_statements
order by entry_accession, gene_name, annotation_category, location_begin_master, location_end_master, annotation_name, evidence_quality, evidence_intensity, variant_original_amino_acid, variant_variation_amino_acid, reference_accession, subject_annotation_ids, object_annotation_ids, annotation_id
"
if [ -z "$1" ]
then 
	psql -d nxflat -c "COPY ($SQL_EXPORT) TO STDOUT WITH CSV HEADER"
else	
	psql -h $1 -d nxflat -c "COPY ($SQL_EXPORT) TO STDOUT WITH CSV HEADER"
fi
