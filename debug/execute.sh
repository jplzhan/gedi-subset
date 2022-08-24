#!/bin/bash
set -xuo pipefail

subset_py="conda run --no-capture-output -n gedi_subset /home/jovyan/maap-documentation-examples/gedi-subset/src/subset.py"

aoi="aoi.geojson"
columns="agbd, agbd_se, l2_quality_flag, l4_quality_flag, sensitivity, sensitivity_a2, lon_lowestmode, lat_lowestmode"
query="l2_quality_flag == 1 and l4_quality_flag == 1 and sensitivity > 0.95 and sensitivity_a2 > 0.95"
limit="5"

$subset_py --cmr-host cmr.earthdata.nasa.gov --verbose --aoi $aoi --columns "$columns" --query "$query" --limit $limit
