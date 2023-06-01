variable "region" {
  description = "Name of region"
  type        = string
  default     = "ap-northeast-2"
}

variable "vpc_name" {
  description = "Name of VPC"
  type        = map(string)

  default = {
    "Name" = "devops-workshop"
  }
}

variable "all_cidr" {
  description = "The CIDR block for the VPC"
  type        = string
  default     = "0.0.0.0/0"
}

variable "vpc_cidr" {
  description = "The CIDR block for the VPC"
  type        = string
  default     = "10.0.0.0/16"
}

variable "enable_dns_hostname" {
  description = "Should be true to enable DNS hostname in the VPC"
  type        = bool
  default     = true
}

variable "vpc_azs" {
  description = "Availability zones for VPC"
  type        = list(string)
  default     = ["ap-northeast-2a", "ap-northeast-2c"]
}

variable "public_subnets" {
  description = "A list of public subnets inside the VPC"
  type        = list(string)
  default     = ["10.0.1.0/24", "10.0.2.0/24"]
}

variable "private_subnets" {
  description = "A list of private subnets inside the VPC"
  type        = list(string)
  default     = ["10.0.3.0/24", "10.0.4.0/24"]
}

variable "enable_public_ip_on_launch" {
  description = ""
  type        = bool
  default     = true
}

variable "public_subnet_tags" {
  description = "Additional tags for the public subnet"
  type        = map(string)

  default = {
    "Name" = "devops-workshop-pub-sub"
  }
}

variable "private_subnet_tags" {
  description = "Additional tags for the priate subnet"
  type        = map(string)

  default = {
    "Name" = "devops-workshop-pri-sub"
  }
}

variable "public_subnet_rt_tags" {
  description = "Additional tags for the public route tables"
  type        = map(string)

  default = {
    "Name" = "devops-workshop-pub-rt"
  }
}

variable "private_subnet_rt_tags" {
  description = "Additional tags for the private route tables"
  type        = map(string)

  default = {
    "Name" = "devops-workshop-pri-rt"
  }
}

variable "igw_tags" {
  description = "Additional tags for the internet gateway"
  type        = map(string)

  default = {
    "Name" = "devops-workshop-igw"
  }
}

variable "nat_tags" {
  description = "Additional tags for the NAT gateway"
  type        = map(string)

  default = {
    "name" = "devops-workshop-nat"
  }
}

variable "eip_vpc_true" {
  type    = bool
  default = true
}

variable "alb_name" {
  description = "Name of ALB"
  default     = "devops-workshop-alb"
}

variable "alb_type" {
  type    = string
  default = "application"
}

variable "alb_tg_name" {
  type    = string
  default = "devops-workshop-alb-tg"
}
