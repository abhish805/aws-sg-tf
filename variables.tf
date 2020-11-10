variable "sg_name" {
  description = "Name of security group"
  type        = string
  default     = "as-sg-tf"
}

variable "sg_description" {
  description = "Brief description of security group"
  type        = string
  default     = "Allow HTTP and SSH access from everywhere."
}

variable "sg_rules" {

}

# variable "sg_ingress" {
#     description = "List of maps of ingress rules to set on the default security group"
#     type        = list(map(string))
#     # default     =   [
#     #                     {
#     #                         from_port   = "80"
#     #                         to_port     = "80"
#     #                         protocol    = "tcp"
#     #                         cidr_blocks = "0.0.0.0/0"
#     #                     },
#     #                     {
#     #                         from_port   = "22"
#     #                         to_port     = "22"
#     #                         protocol    = "tcp"
#     #                         cidr_blocks = "0.0.0.0/0"
#     #                     }
#     #                 ]
# }

# variable "sg_egress" {
#     description = "List of maps of egress rules to set on the default security group"
#     type        = list(map(string))
#     # default     =   [
#     #                     {
#     #                         from_port   = "0"
#     #                         to_port     = "0"
#     #                         protocol    = "-1"
#     #                         cidr_blocks = "0.0.0.0/0"
#     #                     }
#     #                 ]
# }