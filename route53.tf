data "aws_route53_zone" "cgit" {
  name         = "polarisonline.site."
  private_zone = false
}

resource "aws_route53_record" "www" {
  zone_id = data.aws_route53_zone.cgit.zone_id
  name    = "test.polarisonline.site"
  type    = "A"
  alias {
    name                   = module.elb.elb_dns_name
    zone_id                = module.elb.elb_zone_id
    evaluate_target_health = true
  }
}