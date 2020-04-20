provider "aws" {
	region = var.region
}

resource "aws_iam_role" "iam_role_lambda" {
	name = "iam_role_lambda"
	assume_role_policy = file("iam-role-lambda.json")
}

data "archive_file" "app_deployment_file" {
	type		= "zip"
	source_dir	= "source"
	output_path = "tmp/app.zip"
}


resource "aws_lambda_function" "greet_function" {
	function_name = "GreetingLambdaApp"
	
	filename = var.app_deployment_file
	handler = "greet_lambda.lambda_handler"
	runtime = "python3.8"
	role = aws_iam_role.iam_role_lambda.arn

	environment {
		variables = {
			greeting = "Hellooo"
		}
	}
}


