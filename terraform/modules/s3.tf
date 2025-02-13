resource "aws_s3_bucket" "cloud_resume_bucket" {
    bucket = "codyleetech.com"

    tags = {
        Name = "domain-bucket"
    }
}

resource "aws_s3_bucket_versioning" "main_bucket_versioning" {
    bucket = aws_s3_bucket.cloud_resume_bucket.id
    versioning_configuration {
        status = "Enabled"
    }
}

resource "aws_s3_bucket_website_configuration" "cloud_resume_bucket_website" {
    bucket = aws_s3_bucket.cloud_resume_bucket.id
 
    index_document {
        suffix = "index.html"
    }
}

resource "aws_s3_bucket" "cloud_resume_bucket_www" {
    bucket = "www.codyleetech.com"
}

resource "aws_s3_bucket_versioning" "www_bucket_versioning" {
    bucket = aws_s3_bucket.cloud_resume_bucket_www.id
    versioning_configuration {
        status = "Enabled"
    }
}

resource "aws_s3_bucket_website_configuration" "www_bucket_website" {
    bucket = aws_s3_bucket.cloud_resume_bucket_www.id

    redirect_all_requests_to {
        host_name = "codyleetech.com"
        protocol = "https"
    }
}
