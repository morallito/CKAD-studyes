#!/bin/bash
source .env

ibmcloud login -a "cloud.ibm.com" -r "us-south" --apikey  $API_KEY -g "Default"

# Select the rigth cluster
ibmcloud cs cluster config --cluster $CLUSTER_NAME
