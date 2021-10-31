provider "aws" {
  region     = "us-west-2"
  access_key = "AKIA4QIWBQQQJ53AR3UX"
  secret_key = "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"
}
resource "aws_vpc" "main" {
  count            = 2
  cidr_block       = "10.0.0.0/16"
  instance_tenancy = "default"

  tags = {
    Name = "main"
  }
}
