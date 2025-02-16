resource "aws_s3_bucket" "web_bucket" {
    bucket = "codyleetech.com"
}

resource "aws_s3_bucket" "www_web_bucket" {
    bucket = "www.codyleetech.com" 
}

resource "aws_s3_bucket_versioning" "web_bucket_versioning" {
    bucket = "aws_s3_bucket.web_bucket.id"
    versioning_configuration {
      status = "enabled"
    }
}

resource "aws_s3_bucket_versioning" "www_web_bucket_versioning" {
    bucket = "aws_s3_bucket.www_web_bucket.id"
    versioning_configuration {
      status = "enabled"
    }
  
}

resource "aws_s3_bucket_public_access_block" "web_bucket_public_access" {
    bucket = "aws_s3_bucket.web_bucket.id"

    block_public_acls = true
    block_public_policy = true
    ignore_public_acls = true
    restrict_public_buckets = true
}

resource "aws_s3_bucket_public_access_block" "www_web_bucket_public_access" {
    bucket = "aws_s3_bucket.www_web_bucket.id"

    block_public_acls = true
    block_public_policy = true
    ignore_public_acls = true
    restrict_public_buckets = true

}

resource "aws_s3_bucket_policy" "web_policy" {
  bucket = "aws_s3_bucket.web_bucket.id"

  policy = jsonencode({
    "Version" = "2012-10-17"
    "Statement" = [
        {
            "Sid" = "AllowsCloudFrontServicePrincipal"
            "Effect" = "Allows"
            "Principal" = {
                "Service" = "cloudfront.amazonaws.com"
            }
            "Action" = "s3:GetObject"
            "Resource" = "arn:aws:s3:::codyleetech.com/*"
            "Condition" = {
                "StringEquals" = {
                    "AWS:SourceArn" = aws_cloudfront_distribution.web_cdn.arn
                }
            }
        }
    ]
  })
}

resource "aws_s3_bucket_policy" "www_web_policy" {
  bucket = "aws_s3_bucket.www_web_bucket.id"

  policy = jsonencode({
    "Version" = "2012-10-17"
    "Statement" = [
        {
            "Sid" = "AllowsCloudFrontServicePrincipal"
            "Effect" = "Allows"
            "Principal" = {
                "Service" = "cloudfront.amazonaws.com"
            }
            "Action" = "s3:GetObject"
            "Resource" = "arn:aws:s3:::www.codyleetech.com/*"
            "Condition" = {
                "StringEquals" = {
                    "AWS:SourceArn" = aws_cloudfront_distribution.www_web_cdn.arn
                }
            }
        }
    ]
  })
}