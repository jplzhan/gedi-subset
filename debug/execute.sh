#!/bin/bash
set -xuo pipefail

subset_py="conda run --no-capture-output -n gedi_subset /home/jovyan/maap-documentation-examples/gedi-subset/subset.py"

aoi="aoi.geojson"
columns="agbd, agbd_se, l2_quality_flag, sensitivity, sensitivity_a2"
query="l2_quality_flag == 1 and l4_quality_flag == 1 and sensitivity > 0.95 and sensitivity_a2 > 0.95"
limit="10000"

$subset_py --verbose --aoi $aoi --columns "$columns" --query "$query" --limit $limit
