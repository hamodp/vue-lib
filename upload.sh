#!/bin/bash
# upload.sh
# uploads all tgz files to the npm repo of the local nexus repository
# this includes duplicates in case they have different url paths
for f in *.tgz*; do
  curl -u admin:$NEXUS_PWD -X POST "http://localhost:8081/service/rest/v1/components?repository=npm" -F "npm.asset=@$f" -v
done
