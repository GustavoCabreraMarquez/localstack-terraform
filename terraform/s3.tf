resource "aws_s3_bucket" "this" {
  for_each = toset(var.buckat_name)
  bucket = each.key

  tags = {
    Band        = "Polyphia"
    Purpose = "Songs_Each"
    Management = "Terraform"
  }
}