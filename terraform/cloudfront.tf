resource "aws_cloudfront_distribution" "cloud_resume_distribution" {
  origin {
    domain_name = aws_s3_bucket.cloud_resume_bucket.bucket_regional_domain_name
    origin_id   = aws_s3_bucket.cloud_resume_bucket.id
  }

  enabled             = true
  default_root_object = "index.html"
  price_class         = "PriceClass_100"

  default_cache_behavior {
    allowed_methods  = ["GET", "HEAD"]
    cached_methods   = ["GET", "HEAD"]
    target_origin_id = aws_s3_bucket.cloud_resume_bucket.id
    viewer_protocol_policy = "redirect-to-https"
    
    forwarded_values {
      query_string = false
      cookies {
        forward = "none"
      }
    }
  }

  restrictions {
    geo_restriction {
      restriction_type = "whitelist"
      locations         = ["US", "CA", "MX", "GB", "DE", "FR"]
    }
  }

  viewer_certificate {
    cloudfront_default_certificate = true
  }
}

