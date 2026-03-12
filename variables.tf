variable "region" {
  default = "ap-south-1"
}

variable "cluster_name" {
  default = "banking-eks-cluster"
}

variable "kubernetes_version" {
  default = "1.29"
}

variable "vpc_id" {}

variable "private_subnets" {
  type = list(string)
}

variable "instance_type" {
  default = "t3.medium"
}

variable "desired_size" {
  default = 2
}

variable "max_size" {
  default = 3
}

variable "min_size" {
  default = 1
}
