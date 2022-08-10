output "vpc_id" {
    value = aws_vpc.vpc.id 
}
output "vpc_cidr_block" {
  value = aws_vpc.vpc.cidr_block
}
output "ipv6_cidr_block" {
  value = aws_vpc.vpc.ipv6_cidr_block
}