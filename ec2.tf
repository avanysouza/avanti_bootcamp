resource "aws_instance" "avany" {
  ami                    = "ami-0c1ac8a41498c1a9c"
  instance_type          = "t3.micro"
  key_name               = "ec2_aws" #Adicione sua Key Pairs da AWS aqui!
  vpc_security_group_ids = [aws_security_group.allow_ssh.id]
  user_data              = file("script.sh")

  tags = {
    Name = "avany"
  }
}
