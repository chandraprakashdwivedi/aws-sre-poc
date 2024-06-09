variable "aws_region" {
  description = "AWS region to launch servers."
  default     = "ap-south-1"
}

variable "aws_availability_zone" {
  description = "AWS availabitiy zone to launch servers."
  default     = "ap-south-1"
}

variable "aws_instance_type" {
  description = "AWS Instance type"
  default     = "t2.micro"
}

variable "aws_public_key_name" {
  default = "prometheus_aws"
}

variable "prometheus_access_name" {
  default = "prometheus_ec2_access"
}

# Ubuntu Server 18.04 LTS (HVM), SSD Volume Type
variable "aws_amis" {
  default = {
    ap-south-1 = "ami-0dad20bd1b9c8c004"
  }
}

variable "name" {
  description = "Infrastructure name"
  default = "Promethus_Server"
}

variable "env" {
  description = "Environment"
  default = "dev"
}