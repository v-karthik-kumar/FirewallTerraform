#Stateless rules in Network firewall policy
resource "aws_networkfirewall_rule_group" "CloudThatRuleGroup" {
  capacity = 10
  name     = var.name_rule
  type     = var.type
  rule_group {
    rules_source {
      rules_source_list {
        generated_rules_type = var.generated_rules_type
        target_types         = [var.target_types]
        targets              = [var.targets]
      }
    }
  }

  tags = {
    Tag1 = var.Tag1_rule
  }
}

resource "aws_networkfirewall_firewall_policy" "CloudThatNetworkPolicy" {
  name = var.name_policy
  firewall_policy {
    stateful_rule_group_reference {
      priority     = 10
      resource_arn = aws_networkfirewall_rule_group.CloudThatRuleGroup.arn
    }
  }
  tags = {
    Tag1 = var.Tag1_policy
  }
}

resource "aws_networkfirewall_firewall" "CloudthatNetworkFirewall" {
  name                = var.name_firewall
  firewall_policy_arn = aws_networkfirewall_firewall_policy.CloudThatNetworkPolicy.arn
  vpc_id              = var.vpc_id
  subnet_mapping {
    subnet_id = var.subnet_id
  }

  tags = {
    Tag1 = var.Tag1_firewall
  }
}

