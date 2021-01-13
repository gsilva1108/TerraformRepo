#!/bin/bash

terraform init
terraform apply -auto-approve -var "user_name=test_user1"