variable "aws_region" {
  description = "The AWS region"
  type        = string
}

variable "ami_id" {
  description = "The specific AMI ID to use for the EC2 instance"
  type        = string
  default     = "ami-0f1924397f5458f"
}

variable "instance_type" {
  description = "EC2 instance type"
  type        = string
  default     = "t3.micro"
}