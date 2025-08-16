#!/bin/bash

# Define the URL of your GCP web server (or load balancer's IP/hostname)
SERVER = "ENTER_YOUR_SERVER_HOST_NAME_OR_IP_HERE"
SERVER_URL="http://$SERVER" 

# Define the number of requests to send
NUM_REQUESTS=100

# Loop to send requests
for i in $(seq 1 $NUM_REQUESTS); do
  echo "Sending request $i to $SERVER_URL"
  curl -s $SERVER_URL > /dev/null # -s for silent output, redirect to /dev/null to discard response
  # add a short delay between requests if needed:
  sleep 0.1 
done

echo "Load simulation complete."
