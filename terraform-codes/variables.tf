variable "ami_id" {
  description = "Amazon Machine Image (AMI) is a supported and maintained image"
  type = string
  default = ""
}

variable "instance_type" {
  description = "The type of instance."
  type = string
  default = "t2.large"
}

variable "tags" {
  description = "Map of tags to add to all resources created"
  type        = map(any)
  default     = {}
}

variable "tag_name" {
  description = "The name identifying the tagged resource"
  type = list(any)
  default = []
}

variable "cidr_block" {
  description = "The subnet the instance will be in"
  type = list(any)
  default = []
}

variable "availability_zone" {
  description = "The zone the resource will be in."
  type = list(string)
  default = []
}

variable "private_ips" {
  description = "The IPs that each instance will be statically assigned."
  type = list(any)
  default = []
}

variable "security_groups" {
  description = "List of security groups to attach"
  type = list(any)
  default = []
}

variable "vpc_name" {
  description = "Name of VPC"
  type = string
  default = ""
}

variable "ec2_key_name" {
  description = "Key name to use on ec2 instance for SSH access"
  type = string
  default = ""
}

variable "instance_count" {
  description = "Number of instances to deploy"
  type = number
  default = 1
}

variable "subnet_name" {
  description = "Name of subnet"
  type = list(any)
}
