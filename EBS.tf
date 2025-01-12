# resource "aws_ebs_volume" "gp3_volume" {
#   availability_zone = var.Instance_az
#   size              = var.EBS_size
#   type              = var.EBS_type # gp2, io1, io2, sc1, st1, standard
#   iops              = 3000  # default
#   throughput        = 125   #default
#   #snapshot_id       = ""
#   #encrypted         = "" # yes/no

#   tags = {
#     Name = var.EBS_name
#   }
# }

# resource "aws_volume_attachment" "attach_gp3" {
#   volume_id   = aws_ebs_volume.gp3_volume.id
#   instance_id = aws_instance.TF-instance.id
#   device_name = var.EBS_device
# }