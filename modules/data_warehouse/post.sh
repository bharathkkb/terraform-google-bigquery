#!/bin/bash
set -o errexit -o nounset -o pipefail

source post.env
# permission propagation
sleep 60
echo "workflow: ${workflow_id}"
gcloud workflows run ${workflow_id}
echo "completed post step"
