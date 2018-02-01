Should keep history of bed data 

```shell
ssh npteamATcrick
cd /work/projects/nxflat-statements-history
export RELEASE=2017-01-20
sh nxs-annot-stats-statements.sh kant > $RELEASE-annot-stats-BED.csv
sh nxs-evidence-stats-statements.sh kant > $RELEASE-evidence-stats-BED.csv
sh nxs-export-statements.sh kant > $RELEASE-BED.csv
sh nxs-export-statements.sh kant > bed.csv
```

