variable "ami_id" {
  type        = string
  default     = "ami-0b4f379183e5706b9"
  description = "ami id of the image"
}

variable "instance_type" {
  type        = string
  default     = "t2.micro"
  description = "type of the instance"
}

variable "tags" {
  type        = map
  default     = {
    name      = terraform
  }
}

variable "sg_name" {
  type        = string
  default     = "allow_ssh"
  description = "security group name"
}

variable "from_port" {
  type        = number
  default     = "22"
  description = "allow 22 port"
}

variable "to_port" {
  type        = number
  default     = "22"
  description = "allow 22 port"
}

variable "protocol" {
  type        = string
  default     = "tcp"
  description = "tcp protocol"
}

variable "cidr" {
  type        = list(string)
  default     = ["0.0.0.0/0"]
}











