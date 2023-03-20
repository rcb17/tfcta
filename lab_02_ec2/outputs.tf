# SERVER 2
output "public_ip1" {
  description = "Public IP of instance"
  value       = aws_instance.server1.public_ip
}

# output "key_name" {
#   description = "SSH Key Name"
#   value       = aws_instance.server1.key_name
# }

output "ami1" {
  description = "AMI of instance"
  value       = aws_instance.server1.ami
}

 output "instance_stuff1" {
   description = "all info about instance"
   value       = aws_instance.server1
 }

output "instance_id1" {
  description = "Id of instance"
  value       = aws_instance.server1.id
}

# SERVER 2

output "public_ip2" {
  description = "Public IP of instance"
  value       = aws_instance.server2.public_ip
}

# output "key_name" {
#   description = "SSH Key Name"
#   value       = aws_instance.server1.key_name
# }

output "ami2" {
  description = "AMI of instance"
  value       = aws_instance.server2.ami
}

 output "instance_stuff2" {
   description = "all info about instance"
   value       = aws_instance.server2
 }

output "instance_id2" {
  description = "Id of instance"
  value       = aws_instance.server2.id
}

# output "ami_details" {
#   description = "Full details of selected AMI - e.g. for troubleshooting filter
#   value = data.aws_ami.amazon_linux2_kernel_5
# }



## To use for example in IAM policies or retrieving caller identity
data "aws_caller_identity" "current" {

}
output "user_identity" {
  description = "Info about IAM principal used by Terraform to configure AWS"
  value       = data.aws_caller_identity.current
}
