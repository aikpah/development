terraform {
  source = "../terraform-modules/ec2_instance"
}
# include {
#  path = find_in_parent_folders()
#}
inputs = {
  # "Microsoft Windows Server 2019 Core Base"
  ami_id = "ami-0486e3c2fecdf9d6f"
  instance_type = "t2.large"
  tag_name = ["itops-poc-dc1-2019", "itops-poc-dc2-2019"]
  administratorsgroup = "ess-admins"
  ou = "OU=Dev,OU=Servers,OU=TEST,OU=FFM,OU=External,OU=CMS,DC=awscloud,DC=cms,DC=local"
  ec2_key_name = "ai-key"
  instance_count = 2
  # vpc tag name
  vpc_name = "itops-east-dev"
  subnet_name = ["itops-east-dev-private-1-a", "itops-east-dev-private-1-b"]
  private_ips = [["10.147.243.24"], ["10.147.243.54"]]
  device_index = 0
  availability_zone = ["us-east-1a", "us-east-1b"]
  security_groups = ["sg-0ae8d654ddcbd3ac1", "sg-0ffcc2e9b76342d4b", "sg-042350ceb83c11d36"]
}
