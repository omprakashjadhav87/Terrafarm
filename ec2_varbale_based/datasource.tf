data "aws_ami" "latest_amazon_ami" {
    most_recent = true
    owners = [ "amazon" ]
filter {
  name = "name"
  values = [ "al2023-ami-2023.1.*.0-kernel-6.1-x86_64" ]
}  
}