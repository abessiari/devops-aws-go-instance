variable "tags" {
  type = map
  default = { Name: "aes-fabfed-instance" }
}

variable vpc_id {
  type = string
  description = "ID of an existing VPC."
  default = "vpc-0c641c70ee2ec1790"
}


variable subnet_id {
  type = string
  description = "ID of an existing subnet"
  default = "subnet-096185b34c183ca1d"
}

variable "region" {
  default = "us-east-1"
}

variable "instance_type" {
  default = "t2.small" 
}

// ubuntu ami to use for fabfed testing
variable "ami" {
  default = "ami-051f7e7f6c2f40dc1" 
}

variable "disk_size" {
  type = number 
  description = "size of disk in Gigabytes"
  default = 10
}

variable "public_key_path" {
  type = string 
  description = "path to ssh public key"
  default = "/tmp/go-ssh.pub"
}

variable "open_ports" {
  type    = list(number)
  default = [ 22 ]
}

variable "use_elastic_ip" {
  type = bool
  description = "whether to use an elastic ip or not"
  default = false 
}

// optional
variable "dns_record_name" {
  type = any
  default = [] 
  description = "type A DNS record wich will be mapped to public ip"
}

variable "dns_zone_id" {
  type = string 
  description = "zone id for dns record"
  default = "REPLACE_ME"  
}
