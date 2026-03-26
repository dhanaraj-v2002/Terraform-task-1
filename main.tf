# Provider for Mumbai
provider "aws" {
  alias  = "mumbai"
  region = "ap-south-1"
}

# Provider for Singapore
provider "aws" {
  alias  = "singapore"
  region = "ap-southeast-1"
}

# EC2 in Mumbai
resource "aws_instance" "mumbai_instance" {
  provider = aws.mumbai

  ami           = "ami-0f58b397bc5c1f2e8" # Amazon Linux (Mumbai)
  instance_type = "t3.micro"

  tags = {
    Name = "Mumbai-Instance"
  }
}

# EC2 in Singapore
resource "aws_instance" "singapore_instance" {
  provider = aws.singapore

  ami           = "ami-0df7a207adb9748c7" # Amazon Linux (Singapore)
  instance_type = "t3.micro"

  tags = {
    Name = "Singapore-Instance"
  }
}
