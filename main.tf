resource "aws_vpc" "main" {
  cidr_block       = var.cidr_block
  instance_tenancy = "default" #default value.
  enable_dns_hostnames = var.enable_dns_hostnames
  enable_dns_support = var.enable_dns_support
    tags = merge(var.common_tags,
                 var.vpc_tags)      #merge individual and common tags
}

resource "aws_internet_gateway" "main" {
  vpc_id = aws_vpc.main.id

  tags = merge( var.common_tags,
               var.igw_tags)
  
  }

 resource "aws_subnet" "public" {
  count =length(var.public_subnet_cidr)    #2subnets 
  vpc_id     = aws_vpc.main.id
  cidr_block = var.public_subnet_cidr[count.index]
  availability_zone = var.azs[count.index]  #2 avz

  tags = merge(var.common_tags,
  {
    Name = var.public_subnet_names[count.index]  #2 subnets names.
  }
  )
  }

  resource "aws_subnet" "private" {
   count =length(var.private_subnet_cidr)    #2subnets 
  vpc_id     = aws_vpc.main.id
  cidr_block = var.private_subnet_cidr[count.index]
  availability_zone = var.azs[count.index]  #2 avz

  tags = merge(var.common_tags,
  {
    Name = var.private_subnet_names[count.index]  #2 subnets names.
  }
  )
  }

resource "aws_subnet" "database" {
   count =length(var.database_subnet_cidr)    #2subnets 
  vpc_id     = aws_vpc.main.id
  cidr_block = var.database_subnet_cidr[count.index]
  availability_zone = var.azs[count.index]  #2 avz

  tags = merge(var.common_tags,
  {
    Name = var.database_subnet_names[count.index]  #2 subnets names.
  }
  )
  }
  

  


  

