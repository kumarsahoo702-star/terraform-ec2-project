aws_region            = "ap-south-1"
vpc_cidr              = "10.0.0.0/16"
subnet_cidr           = "10.0.1.0/24"
allowed_ingress_ports = [22, 80, 443]
instance_type         = "t3.micro"
instance_name         = "MyWebAppInstance"
ami_id                = "ami-0f1924397f5458f" # Replace with your specific AMI ID