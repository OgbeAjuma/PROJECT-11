variable "vpc-cidr11" {
    default = "10.0.0.0/16"
    description = "vpc cidr block"
    type =string
}

variable "public-subnet-01" {
    default = "10.0.1.0/24"
    description = "public subnet 01 cidr block"
    type =string
}

variable "public-subnet-02" {
    default = "10.0.2.0/24"
    description = "public sub 02 cidr block"
    type =string
}

variable "private-subnet-01" {
    default = "10.0.3.0/24"
    description = "private sub 01 cidr block"
    type =string
}

variable "private-subnet-02" {
    default = "10.0.4.0/24"
    description = "private sub 01 cidr block"
    type =string
}
variable "name-vpcproj11" {
    default = "project-11"
    description = "nametagvpc"
    type =string
}
variable "name-pubsub1" {
    default = "pubsubnet-01"
    description = "nametagpubsub1"
    type =string
}

variable "name-pubsub2" {
    default = "pubsubnet-02"
    description = "nametagpubsub2"
    type =string
}

variable "name-privsub1" {
    default = "privsubnet-01"
    description = "nametagprivsub1"
    type =string
}

variable "name-privsub2" {
    default = "privsubnet-02"
    description = "nametagprivsub2"
    type =string
}

variable "name-tagpubrt" {
    default = "publicroute01"
    description = "nametagpubrt"
    type =string
}

variable "name-tagprivrt" {
    default = "privateroute01"
    description = "nametagprivrt"
    type =string
}
variable "name-tagigw" {
    default = "igw-project-11"
    description = "nametagigw-11"
    type =string
}

variable "name-tagsg" {
    default = "SG-proj-11"
    description = "nametagsg-11"
    type =string
}

variable "name-tagrdssub" {
    default = "my-p11rds-db-subnet"
    description = "nametagrdsub-11"
    type =string
}

variable "name-tagalb11" {
    default = "project11-alb"
    description = "nametagalb-11"
    type =string
}