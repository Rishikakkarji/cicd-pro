provider "aws" {
  region = "ap-south-1"
}

resource "aws_instance" "k8s_node" {
  ami           = "ami-0c55b159cbfafe1f0"
  instance_type = "t2.micro"

  tags = {
    Name = "k8s-node"
  }
}
