#!/bin/bash
# Author: Gustavo Marquez
docker-compose up -d

cd terraform

terraform init

terraform validate

terraform apply -target=aws_s3_bucket.this --auto-approve
echo
echo
echo '####################################################'
echo
echo 'All needed resources have been deployed, have fun!! :)'
echo
echo '####################################################'
echo
echo
echo '####################################################'
echo
echo 'Use <docker-compose down> to terminate this lab'
echo
echo '####################################################'
