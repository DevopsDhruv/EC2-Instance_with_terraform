# To create ssh key use : this command: -  
# "ssh-keygen" 
# then selete location "./nameofkey"
# press 2 times enter
# your key will create in your seleted location

# Creating ssh-key
resource "aws_key_pair" "Instance_key" {
  key_name   = var.key_name
  public_key = file("${path.module}/instance_key.pub")
}