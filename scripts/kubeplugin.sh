#!/bin/bash

# Check for the presence of required command-line arguments
if [ "$#" -ne 2 ]; then
    echo "Usage: $0 <namespace> <resource_type>"
    exit 1
fi

# Retrieve command-line argument values
NAMESPACE="$1"
RESOURCE_TYPE="$2"

# Retrieve resource usage statistics from Kubernetes
kubectl top $RESOURCE_TYPE -n $NAMESPACE | tail -n +2 | while read line
do
  # Extract CPU and memory usage information from the output
  NAME=$(echo $line | awk '{print $1}')
  CPU=$(echo $line | awk '{print $2}')
  MEMORY=$(echo $line | awk '{print $3}')

  # Output the statistics to the console
  echo "$RESOURCE_TYPE, $NAMESPACE, $NAME, CPU: $CPU, Memory: $MEMORY"
done