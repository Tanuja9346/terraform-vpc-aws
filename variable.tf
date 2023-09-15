variable "cidr_block" {
    #default = ["0.0.0.0/0"]
}   #giving varaiable definition here
  
variable "enable_dns_hostnames"{
    default = true
}

variable "enable_dns_support"{
    default = true
}

variable "common_tags"{
 default = {}   #this is dequal to optinal
  type = map
}

variable "vpc_tags"{
 default = {}   #this is dequal to optinal
  type = map
}

variable "igw_tags"{
    default = {}
}

variable "public_subnet_cidr"{

}

variable "azs" {
  
}
variable "public_subnet_names" {

  
}
variable "private_subnet_cidr"{

}

variable "private_subnet_names" {
  
}
variable "database_subnet_cidr"{

}

variable "database_subnet_names" {
  
}

