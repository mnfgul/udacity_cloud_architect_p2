# TODO: Define the variable for aws_region

variable "region" {
	default = "us-east-1"
}


variable "app_deployment_file" {
	type = string
	description = "App deployment zip file"
	default = "tmp/app.zip"
}


