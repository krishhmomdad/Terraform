provider "aws" {
    region = "ap-south-1"
}
module "my_vpc"{
    source="../modules/vpc"
    vpc_cidr="192.168.0.0/16"
    tenancy="default"
    vpc_id="${module.my_vpc.vpc_id}"
    subnet_cidr="192.168.1.0/24"
}
module "my_ec2"{
    source="../modules/ec2"
    ec2_count=1
    ec2_ami="ami-09052aa9bc337c78d"
    instatype="t2.micro" 
    subnet_id="${module.my_vpc.subnet_id}"
}