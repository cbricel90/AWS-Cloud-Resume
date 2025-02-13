resource "aws_route53_zone" "cloud_resume_zone" {
  name = "codyleetech.com"
}

resource "aws_route53_record" "cloud_resume_record" {
  zone_id = aws_route53_zone.cloud_resume_zone.zone_id
  name    = "codyleetech.com"
  type    = "A"
  ttl     = "300"
  records = ["${aws_cloudfront_distribution.cloud_resume_distribution.domain_name}"]
}

resource "aws_route53_record" "cloud_resume_record_www" {
  zone_id = aws_route53_zone.cloud_resume_zone.zone_id
  name    = "www.codyleetech.com"
  type    = "A"
  ttl     = "300"
  records = ["${aws_cloudfront_distribution.cloud_resume_distribution_www.domain_name}"]
}

