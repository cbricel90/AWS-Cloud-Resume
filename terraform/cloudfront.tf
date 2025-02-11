resource "aws_cloudfront_distribution" "cloud_resume_distribution" {
  origin {
    domain_name = aws_s3_bucket.cloud_resume_bucket.bucket_regional_domain_name
    origin_id   = aws_s3_bucket.cloud_resume_bucket.id
  }

  enabled             = true
  is_ipv6_enabled     = true
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
   acm_certificate_arn = arn:aws:acm:us-east-1:491085393478:certificate/92e7a779-9fa8-480e-889b-526b3238dddb
   ssl_support_method = "sni-only"
   minimum_protocol_version = "TLSv1.2_2021"
  }
}

