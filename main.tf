provider "aws" {
	access_key = "${var.aws_access_key}"
	secret_key = "${var.aws_secret_key}"
	region = "${var.region}"
}


###### EC2 #####

resource "aws_instance" "myinstance-one" {
	ami = "ami-0b69ea66ff7391e80"
	instance_type = "t2.micro"
	tags = {
		Name = "EC2one"
	}
}
