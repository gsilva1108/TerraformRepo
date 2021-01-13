provider "aws" {
    region = "us-east-1"
    shared_credentials_file = "/Users/gsilva/.aws/credentials"
}

variable "user_name" {
    default = "test_user0"
}