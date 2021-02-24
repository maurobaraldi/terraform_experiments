resource "aws_s3_bucket" "tests" {
  bucket = "blokus-test-${var.workspace}"
  acl    = "private"
}
