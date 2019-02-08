variable "environ" {}
variable "appname" {}
variable "host_port" { default = 8080 }
variable "docker_port" { default = 8080 }
variable "lb_port" { default = 80 }
variable "aws_region" { default = "us-east-1" }
variable "key_name" { default = "YOUR-AWS-KEY-PAIR-NAME" }
variable "dockerimg" { default = "YOUR-DOCKER-HUB-USERNAME/IMAGE-NAME" }

variable "ami" {
  description = "AWS ECS AMI id"
  default = {
    us-east-1 = "ami-67a3a90d"
    us-west-1 = "ami-b7d5a8d7"
    us-west-2 = "ami-c7a451a7"
    eu-west-1 = "ami-9c9819ef"
    eu-central-1 =  "ami-9aeb0af5"
    ap-northeast-1 = "ami-7e4a5b10"
    ap-southeast-1 = "ami-be63a9dd"
    ap-southeast-2 = "ami-b8cbe8db"
  }
}
