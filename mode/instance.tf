resource "aws_instance" "my_server" {
  count =var.Subnet_count
  ami                    = "ami-0c398cb65a93047f2" 
  instance_type          = var.instance_type
  subnet_id              = aws_subnet.Public-Subnet[count.index].id
  associate_public_ip_address = var.if_Public_ip
  vpc_security_group_ids = [aws_security_group.sg.id]
  

  tags = {
    Name = "vm_lior"
  }
}
