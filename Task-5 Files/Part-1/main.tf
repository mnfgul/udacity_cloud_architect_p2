# Designate a cloud provider, region, and credentials
provider "aws"{
	region = "us-east-1"
}

# provision 4 AWS t2.micro EC2 instances named Udacity T2
resource "aws_instance" "Udacity_T2" {
	count =  4

	ami = "ami-0ff8a91507f77f867"
	instance_type = "t2.micro"

	subnet_id = "subnet-05cb4347b10d5af64"
	
	tags = {
		Name = "Udacity_T2_Instance"
		Department = "Udacity_Cloud_Architect"
	}
}

# provision 2 m4.large EC2 instances named Udacity M4
resource "aws_instance" "Udacity_M4" {
	count =  2

	ami = "ami-0ff8a91507f77f867"
	instance_type = "m4.large"

	subnet_id = "subnet-05cb4347b10d5af64"
	
	tags = {
		Name = "Udacity_M4_Instance"
		Department = "Udacity_Cloud_Architect"
	}
}