variable "vpc_name" {}
variable "vpc_id" {}
variable "environment" {}
variable "service_ports" {
    type = list(number) 
}