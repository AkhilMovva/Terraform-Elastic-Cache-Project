output "public_subnet_id" {
  value = aws_subnet.public.id
}

output "private1_subnet_id" {
  value = aws_subnet.private_1.id
}

output "private2_subnet_id" {
  value = aws_subnet.private_2.id
}

output "sg_id" {
  value = aws_security_group.sg.id
}