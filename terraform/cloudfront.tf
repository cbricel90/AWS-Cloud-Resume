resource "aws_cloudfront_distribution" "web_cdn" {
  enabled = true
  is_ipv6_enabled = true
  default_root_object = "index.html"
  price_class = "PriceClass100"
  
  origin {
    domain_name = aws_s3_bucket.web_bucket.bucket_regional_domain_name
    origin_id = "S3-${aws_s3_bucket.web_bucket.id}"

    s3_origin_config {
      origin_access_identity = aws_cloudfront_origin_access_identity.oai.aws_cloudfront_origin_access_identity_path
    }
  }
  default_cache_behavior {
    allowed_methods = ["GET", "HEAD"]
    cached_methods = ["GET", "HEAD"]
    target_origin_id = "S3-${aws_s3_bucket.content.id}"

    forwarded_values {
      query_string = false
      cookies {
        forward = "none"
      }
    }
    viewer_protocol_policy = "redirect-to-https"
    min_ttl = 0
    default_ttl = 3600
    max_ttl = 86400
    compress = true
  }
  restrictions {
    geo_restriction {
      restriction_type = "whitelist"
      locations = ["US", "CA", "MX", "GB", "DE", "FR", "LU", "DK", "CH", "ES"]
    }
  }
}

resource "aws_cloudfront_distribution" "www_web_cdn" {
  enabled = true
  is_ipv6_enabled = true
  default_root_object = "index.html"
  price_class = "PriceClass100"
}

