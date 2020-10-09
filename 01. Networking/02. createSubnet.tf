# DMZ Public Subnets
resource "aws_subnet" "dmz_2a" {
	vpc_id            = aws_vpc.spoon.id
	cidr_block        = "10.1.1.0/24"
	availability_zone = "ap-northeast-2a"
}

resource "aws_subnet" "dmz_2c" {
	vpc_id            = aws_vpc.spoon.id
	cidr_block        = "10.1.2.0/24"
	availability_zone = "ap-northeast-2c"
}

# Web Private Subnets
resource "aws_subnet" "web_2a" {
	vpc_id            = aws_vpc.spoon.id
	cidr_block        = "10.1.3.0/24"
	availability_zone = "ap-northeast-2a"
}

resource "aws_subnet" "web_2c" {
	vpc_id            = aws_vpc.spoon.id
	cidr_block        = "10.1.4.0/24"
	availability_zone = "ap-northeast-2c"
}
