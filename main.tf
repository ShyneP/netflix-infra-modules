provider "aws" {
  region = "us-east-1"
  profile = "default"
}

module "sg" {
  source = "./sg"
  
}

module "ec2" {
  source = "./ec2"
  sg_id = module.sg.sg_id
}

module "ec2" {
  source = "./ec2"
  sg_id = module.sg.sg_id
}