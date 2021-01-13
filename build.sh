#!/bin/bash

cd ./terraform
terraform init
terraform apply -auto-approve -var "user_name=test_user1"