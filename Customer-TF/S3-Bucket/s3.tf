variable "aws_region" {
    type    = string
    default = "us-west-2"
}

resource "aws_s3_bucket" "bucket" {
    bucket = "igor-l-bucket"
    force_destroy = true  
    acl = "private"

    tags = {
    Name        = "igor-l-bucket"
    }
}

output "bucket_name" {
    value = aws_s3_bucket.bucket.bucket
}

output "bucket_arn" {
    value = aws_s3_bucket.bucket.arn
}

provider "aws" {
    region  = var.aws_region
}

