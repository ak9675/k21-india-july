resource "aws_eip" "name" {
  tags = {
    name = "${var.user-name}-eip"
  }
}

resource "aws_s3_bucket" "myname" {
  bucket = "${var.user-name}-buck-k21"
}


variable "user-name" {
 description = "Enter your name"
 default = "akhil"
}

resource "aws_instance" "myname" {
  ami           = "ami-01b799c439fd5516a"
  instance_type = "t2.micro"
  tags = {
    Name = "${var.user-name}-instance"
  }
}
