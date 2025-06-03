variable "region" {
  default = "us-east-1"
}

variable "ami_id" {
  description = "AMI ID for EC2 instance"
}

variable "key_name" {
  description = "EC2 key pair name"
}
