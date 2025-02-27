resource "aws_route53_zone" "main" {
    name = "codyleetech.com"
}

resource "aws_route53_record" "web_a_rec" {
    zone_id = aws_route53_zone.main.zone_id
    name = "codyleetech.com"
    type = "A"
    ttl = "300"
    records = ["${aws_cloudfront_distribution.web_cdn.domain_name}"]
}

# resource "aws_route53_record" "www_web_a_rec" {
  
# }

# resource "aws_route53_record" "web_cname_rec" {
  
# }

