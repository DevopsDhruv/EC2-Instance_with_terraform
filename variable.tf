# Access key and Secret key 
variable "access" {
  type = string
}

variable "secret" {
  type = string
}

variable "region" {
  type = string
}

# ------------------------*****-------------------

# EC2 Instance variable
variable "AMI" {
  type = string
}

variable "Instance_az" {
  type = string
}

variable "instance_type" {
  type = string
}

variable "instance_name" {
  type = string
}

variable "instance_count" {
  type = number
}
# ------------------------*****-------------------


# Security group variable
variable "Security_name" {
  type = string
}

variable "ports" {
  type = list(number)
  #default = [ 22, 80, 443 ]
}

variable "protocol" {
  type = string
  
}
# ------------------------*****-------------------

# SSH Key variable
variable "key_name" {
  type = string
}
# ------------------------*****-------------------

# EBS variable

variable "EBS_size" {
  type = number
}

variable "EBS_name" {
  type = string
}

variable "EBS_type" {
  type = string
}

# EBS Volume Attachment
variable "EBS_device" {
  type = string
}
# ------------------------*****-------------------