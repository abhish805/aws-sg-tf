resource "aws_security_group" "this" {
    name = var.sg_name
    description = var.sg_description

    # dynamic "ingress" {
    #     for_each = var.sg_ingress
    #     content {
    #     cidr_blocks      = compact(split(",", lookup(ingress.value, "cidr_blocks", "")))
    #     description      = lookup(ingress.value, "description", "")
    #     from_port        = ingress.value["from_port"]
    #     to_port          = ingress.value["to_port"]
    #     protocol         = ingress.value["protocol"]
    #     }
    # }

    # dynamic "egress" {
    #     for_each = var.sg_egress
    #     content {
    #     cidr_blocks      = compact(split(",", lookup(egress.value, "cidr_blocks", "")))
    #     description      = lookup(egress.value, "description", "")
    #     from_port        = egress.value["from_port"]
    #     to_port          = egress.value["to_port"]
    #     protocol         = egress.value["protocol"]
    #     }
    # }

    dynamic "ingress" {
        for_each = [for rule in var.sg_rules : rule if rule.type == "ingress" ]
        content {
        cidr_blocks      = compact(split(",", lookup(ingress.value, "cidr_blocks", "")))
        description      = lookup(ingress.value, "description", "")
        from_port        = ingress.value["from_port"]
        to_port          = ingress.value["to_port"]
        protocol         = ingress.value["protocol"]
        }
    }

    dynamic "egress" {
        for_each = [for rule in var.sg_rules : rule if rule.type == "egress" ]
        content {
        cidr_blocks      = compact(split(",", lookup(egress.value, "cidr_blocks", "")))
        description      = lookup(egress.value, "description", "")
        from_port        = egress.value["from_port"]
        to_port          = egress.value["to_port"]
        protocol         = egress.value["protocol"]
        }
    }
}