resource "aws_instance" "datadog" {
  count         = var.number_instances
  ami           = var.aws_ami
  instance_type = var.instance_type

  security_groups = [aws_security_group.allow_ssh_http.name]
  key_name        = aws_key_pair.horadoqa.key_name

  tags = {
    Name = "datadog"
  }

  # user_data = file("agent.sh")
}

resource "aws_key_pair" "horadoqa" {
  key_name   = "aws-instance-key"
  public_key = file("~/.ssh/id_rsa.pub")
}

output "instance_public_ip" {
  description = "O IP público da instância EC2"
  value       = aws_instance.datadog[*].public_ip
}
