resource "aws_s3_bucket" "web_bucket" { 
}

resource "aws_s3_bucket" "www_domain_bucket" { 
}

resource "aws_s3_bucket_versioning" "web_bucket_versioning" {
  
}

resource "aws_s3_bucket_versioning" "www_domain_bucket_versioning" {
  
}

resource "aws_s3_bucket_public_access_block" "web_bucket_public_access" {
  
}

resource "aws_s3_bucket_public_access_block" "www_web_bucket_public_access" {
  
}