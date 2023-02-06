data "aws_vpc" "vpc_id" {
  tags = { "Name" : var.vpc_name }
}

data "aws_subnet" "subnet" {
  count = length(var.tag_name)
  tags = { "Name" : var.subnet_name[count.index] }
}

resource "aws_network_interface" "network_interface" {
  count           = length(var.tag_name)
  subnet_id       = data.aws_subnet.subnet[count.index].id
  private_ips     = var.private_ips[count.index]
  security_groups = var.security_groups
}

resource "aws_instance" "instance" {
  count = length(var.tag_name)
  ami                    = var.ami_id
  instance_type          = var.instance_type
  tags                   = {
    Name = var.tag_name[count.index],
    hostname : var.tag_name[count.index],
    administratorsgroup : var.administratorsgroup,
    ou: var.ou
  }
  key_name               = var.ec2_key_name
  network_interface {
    device_index         = 0
    network_interface_id = aws_network_interface.network_interface[count.index].id
  }
}