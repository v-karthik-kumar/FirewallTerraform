#Stateless rules in Network firewall policy
resource "aws_networkfirewall_rule_group" "CloudThatRuleGroup" {
  capacity = 10
  name     = var.name_rule
  type     = "STATEFUL"
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
    stateless_default_actions          = ["aws:pass"]
    stateless_fragment_default_actions = ["aws:drop"]
    stateful_rule_group_reference {
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


output "endpoint_id"{
  value = aws_networkfirewall_firewall.CloudthatNetworkFirewall.id
}
