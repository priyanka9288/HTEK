provider "aws" {
  region = "ap-south-1"  # Change to your desired region
}

resource "aws_instance" "example" {
  ami           = "ami-0c55b159cbfafe1f0"  # Replace with your desired AMI ID
  instance_type = "t2.micro"  # Change to your desired instance type

  # Optional: Add tags
  tags = {
    Name = "ExampleInstance"
  }

  # Optional
