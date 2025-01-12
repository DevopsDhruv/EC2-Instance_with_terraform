
# Creating Instance
resource "aws_instance" "TF-instance" {
  count = var.instance_count # uncomment this if you want more than one instance.
  associate_public_ip_address = true   #By default it's true but if don't want to assign public ip than write false.
  availability_zone = var.Instance_az
  # attributes
  ami           = var.AMI
  instance_type = var.instance_type
  # Assign ssh-key to Instance
  key_name = aws_key_pair.Instance_key.key_name
  # Assign security group to Instance
  vpc_security_group_ids = ["${aws_security_group.Instance_security.id}"]

  tags = {
    Name = var.instance_name
  }
}

# print instance public key for ssh
output "instance_public_ip" {
  value = ["${aws_instance.TF-instance[*].public_ip}"]
}
output "connection_command" {
  value = "ssh -i 'Instance_key' ubuntu@publicip"
}