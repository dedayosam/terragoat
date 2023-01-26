// basic_aws_instance.tf
// https://learn.hashicorp.com/tutorials/terraform/aws-remote?in=terraform/aws-get-started

// This creates an instance

terraform {
    //required_version = "0.13.6"
    required_providers {
        aws = {
            //source = "hashicorp/aws"
            version = "3.46.0"
        }
    }
}

provider "aws" {
    region = us-west-2
}

resource "aws_instance" "my_test_instance" {
    ami = "ami-0e999cbd62129e3b1" //AL2 in us-west-2
    instance_type = "t2.micro"
}


# NOTE: When you run apply and it has no changes, it says so.