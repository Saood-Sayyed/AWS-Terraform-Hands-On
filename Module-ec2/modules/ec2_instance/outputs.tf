output "EC2_Public-IP" {
    value = aws_instance.example.public_ip
  
}