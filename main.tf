module "aws_sg" {
  source = "./aws_sg"

  sg_name        = var.sg_name
  sg_description = var.sg_description
  sg_rules       = var.sg_rules

}