module "vpc" {
  source = "github.com/terraform-community-modules/tf_aws_vpc"
  name = "${var.appname}-${var.environ}-vpc"
  cidr = "10.100.0.0/16"
  public_subnets  = "10.100.101.0/24,10.100.102.0/24"
  azs = "us-east-1c,us-east-1b"
}
