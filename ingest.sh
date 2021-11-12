#!/bin/bash
$(pwd)/spark-2.1.1-bin-hadoop2.6/bin/spark-submit \
   --class geotrellis.spark.etl.MultibandIngest \
   --master 'local[*]' \
   --driver-memory 16G \
   geotrellis-spark-etl-assembly-2.2.0.jar \
   --input "file://$(pwd)/input.json" \
   --output "file://$(pwd)/output.json" \
   --backend-profiles "file://$(pwd)/backend-profiles.json"
