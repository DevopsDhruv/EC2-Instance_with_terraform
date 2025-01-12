# Region variable value
region = "ap-south-1"
#access = "value"
#secret = "value"


# Instance variable value

instance_count = 1
AMI            = "ami-0dee22c13ea7a9a67"
instance_type  = "t2.micro"
instance_name  = "TF_instance"
Instance_az    = "ap-south-1a"

# Security group variable value

Security_name = "default_IS"
ports         = [22, 80, 443, 5000]
protocol      = "tcp"

# SSH key variable value
key_name = "TF_key"


# EBS variable value
EBS_size = 5
EBS_name = "TF_EBS"
EBS_type = "gp3"
# EBS volume attachment value
EBS_device = "/dev/xvdbb"