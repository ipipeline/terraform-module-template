variable "availability_zone" {
  type        = string
  default     = "us-east-1a"
  description = "The AZ to start the instance in"
}

variable "instance_type" {
  type        = string
  default     = "t2.micro"
  description = "The type of instance to start. Updates to this field will trigger a stop/start of the EC2 instance"
}

variable "environment" {
  type        = string
  default     = "QA"
  description = "Name of the environment instance is being created in"
}

variable "creator" {
  type        = string
  default     = "jdoe@example.com"
  description = "Email address of person creating this resource"
}
