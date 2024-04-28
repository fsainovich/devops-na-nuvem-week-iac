resource "aws_acm_certificate" "this" {
  domain_name       = "fsainovich.tec.br"
  validation_method = "DNS"

  tags = var.tags
}