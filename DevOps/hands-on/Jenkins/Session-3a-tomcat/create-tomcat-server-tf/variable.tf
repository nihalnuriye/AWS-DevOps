//variable "aws_secret_key" {}
//variable "aws_access_key" {}
variable "region" {
  default = "us-east-1"
}
variable "mykey" {
  default = "mykey"
}
variable "tags" {
  default = ["stage", "production"]
}
variable "myami" {
  description = "amazon linux 2023"
  default = "ami-07caf09b362be10b8"
}
variable "instancetype" {
  default = "t2.micro"
}

variable "secgrname" {
  default = "TomcatServerSecurityGroup"
}
