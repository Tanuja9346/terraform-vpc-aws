# vpc
this module is going to create
* vpc
* igw
* 2 public subnets
* 2 private subnets
* 2 database subnets

# inputs
* cidr_block(required) - user has to provide cidr block.
* enable_dns_hostnames(optional)- uaser can provide enable_dns_hostnames, ***default is true* *
* enable_dns_support(optional)- user can provide enable_dns_support, *** default is true**
* common_tags(optional) = user can provide all common tags for all resources default is empty.
* vpc_tags(optional) = user can provide all vpc tags for all resources default is empty.
* igw_tags(optional) = user can provide all igw tags for all resources default is empty.
* public_subnet_cidr(required) = user must provide a list of 2 public subnets cidr.
* public_subnet_names(required) = user must provide a list of 2 public subnets names.
* az (required) = user must provide 2 availability zones.
* private_subnet_cidr(required) = user must provide a list of 2 private subnets cidr.
* private_subnet_names(required) = user must provide a list of 2 private subnets names.
* databse_subnet_cidr(required) = user must provide a list of 2 database subnets cidr.
* database_subnet_names(required) = user must provide a list of 2 database subnets names.
