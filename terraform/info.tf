provider "aws" {
    region = "us-east-1"
    shared_credentials_file = "/home/gus/.aws/credentials"
    profile = "pi_user"
}

variable "user_name" {
    default = "test_user0"
}