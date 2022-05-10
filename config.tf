locals {
    aws_managed_config_rule_identifiers = [
        # Public in name
        "AUTOSCALING_LAUNCH_CONFIG_PUBLIC_IP_DISABLED",
        "DMS_REPLICATION_NOT_PUBLIC",
        "EBS_SNAPSHOT_PUBLIC_RESTORABLE_CHECK",
        "EC2_INSTANCE_NO_PUBLIC_IP",
        "EKS_ENDPOINT_NO_PUBLIC_ACCESS",
        "EMR_MASTER_NO_PUBLIC_IP",
        "LAMBDA_FUNCTION_PUBLIC_ACCESS_PROHIBITED",
        "RDS_INSTANCE_PUBLIC_ACCESS_CHECK",
        "RDS_SNAPSHOTS_PUBLIC_PROHIBITED",
        "REDSHIFT_CLUSTER_PUBLIC_ACCESS_CHECK",
        "S3_ACCOUNT_LEVEL_PUBLIC_ACCESS_BLOCKS",
        "S3_ACCOUNT_LEVEL_PUBLIC_ACCESS_BLOCKS_PERIODIC",
        "S3_BUCKET_LEVEL_PUBLIC_ACCESS_PROHIBITED",
        "S3_BUCKET_PUBLIC_READ_PROHIBITED",
        "S3_BUCKET_PUBLIC_WRITE_PROHIBITED",
        "SSM_DOCUMENT_NOT_PUBLIC",
        "SUBNET_AUTO_ASSIGN_PUBLIC_IP_DISABLED",

        # Others
        "ALB_WAF_ENABLED",
        "API_GW_ASSOCIATED_WITH_WAF",
        "CLOUDFRONT_ASSOCIATED_WITH_WAF",
        "EC2_SECURITY_GROUP_ATTACHED_TO_ENI",
        "ELASTICSEARCH_IN_VPC_ONLY",
        "INSTANCES_IN_VPC",
        "INTERNET_GATEWAY_AUTHORIZED_VPC_ONLY",
        "LAMBDA_INSIDE_VPC",
        "OPENSEARCH_IN_VPC_ONLY",
        "RDS_DB_SECURITY_GROUP_NOT_ALLOWED",
        "S3_BUCKET_ACL_PROHIBITED",
        "VPC_DEFAULT_SECURITY_GROUP_CLOSED",
    ]
}

resource "aws_config_config_rule" "aws_managed_us_east_2" {
  for_each = toset(local.aws_managed_config_rule_identifiers)

  name = "config-rule-${each.key}"
  source {
    owner             = "AWS"
    source_identifier = each.key
  }
  provider = aws.us_east_2
}

resource "aws_config_config_rule" "aws_managed_us_east_1" {
  for_each = toset(local.aws_managed_config_rule_identifiers)

  name = "config-rule-${each.key}"
  source {
    owner             = "AWS"
    source_identifier = each.key
  }
  provider = aws.us_east_1
}

resource "aws_config_config_rule" "aws_managed_us_west_1" {
  for_each = toset(local.aws_managed_config_rule_identifiers)

  name = "config-rule-${each.key}"
  source {
    owner             = "AWS"
    source_identifier = each.key
  }
  provider = aws.us_west_1
}

resource "aws_config_config_rule" "aws_managed_us_west_2" {
  for_each = toset(local.aws_managed_config_rule_identifiers)

  name = "config-rule-${each.key}"
  source {
    owner             = "AWS"
    source_identifier = each.key
  }
  provider = aws.us_west_2
}

resource "aws_config_config_rule" "aws_managed_ap-south-1" {
  for_each = toset(local.aws_managed_config_rule_identifiers)

  name = "config-rule-${each.key}"
  source {
    owner             = "AWS"
    source_identifier = each.key
  }
  provider = aws.ap-south-1
}

resource "aws_config_config_rule" "aws_managed_ap-northeast-3" {
  for_each = toset(local.aws_managed_config_rule_identifiers)

  name = "config-rule-${each.key}"
  source {
    owner             = "AWS"
    source_identifier = each.key
  }
  provider = aws.ap-northeast-3
}

resource "aws_config_config_rule" "aws_managed_ap-northeast-2" {
  for_each = toset(local.aws_managed_config_rule_identifiers)

  name = "config-rule-${each.key}"
  source {
    owner             = "AWS"
    source_identifier = each.key
  }
  provider = aws.ap-northeast-2
}

resource "aws_config_config_rule" "aws_managed_ap-southeast-1" {
  for_each = toset(local.aws_managed_config_rule_identifiers)

  name = "config-rule-${each.key}"
  source {
    owner             = "AWS"
    source_identifier = each.key
  }
  provider = aws.ap-southeast-1
}

resource "aws_config_config_rule" "aws_managed_ap-southeast-2" {
  for_each = toset(local.aws_managed_config_rule_identifiers)

  name = "config-rule-${each.key}"
  source {
    owner             = "AWS"
    source_identifier = each.key
  }
  provider = aws.ap-southeast-2
}

resource "aws_config_config_rule" "aws_managed_ap-northeast-1" {
  for_each = toset(local.aws_managed_config_rule_identifiers)

  name = "config-rule-${each.key}"
  source {
    owner             = "AWS"
    source_identifier = each.key
  }
  provider = aws.ap-northeast-1
}

resource "aws_config_config_rule" "aws_managed_ca-central-1" {
  for_each = toset(local.aws_managed_config_rule_identifiers)

  name = "config-rule-${each.key}"
  source {
    owner             = "AWS"
    source_identifier = each.key
  }
  provider = aws.ca-central-1
}

resource "aws_config_config_rule" "aws_managed_eu-central-1" {
  for_each = toset(local.aws_managed_config_rule_identifiers)

  name = "config-rule-${each.key}"
  source {
    owner             = "AWS"
    source_identifier = each.key
  }
  provider = aws.eu-central-1
}

resource "aws_config_config_rule" "aws_managed_eu-west-1" {
  for_each = toset(local.aws_managed_config_rule_identifiers)

  name = "config-rule-${each.key}"
  source {
    owner             = "AWS"
    source_identifier = each.key
  }
  provider = aws.eu-west-1
}

resource "aws_config_config_rule" "aws_managed_eu-west-2" {
  for_each = toset(local.aws_managed_config_rule_identifiers)

  name = "config-rule-${each.key}"
  source {
    owner             = "AWS"
    source_identifier = each.key
  }
  provider = aws.eu-west-2
}

resource "aws_config_config_rule" "aws_managed_eu-west-3" {
  for_each = toset(local.aws_managed_config_rule_identifiers)

  name = "config-rule-${each.key}"
  source {
    owner             = "AWS"
    source_identifier = each.key
  }
  provider = aws.eu-west-3
}

resource "aws_config_config_rule" "aws_managed_eu-north-1" {
  for_each = toset(local.aws_managed_config_rule_identifiers)

  name = "config-rule-${each.key}"
  source {
    owner             = "AWS"
    source_identifier = each.key
  }
  provider = aws.eu-north-1
}

resource "aws_config_config_rule" "aws_managed_sa-east-1" {
  for_each = toset(local.aws_managed_config_rule_identifiers)

  name = "config-rule-${each.key}"
  source {
    owner             = "AWS"
    source_identifier = each.key
  }
  provider = aws.sa-east-1
}

###

resource "aws_accessanalyzer_analyzer" "aws_managed_us_east_2" {
  analyzer_name = "access-analyzer-public"

  provider = aws.us_east_2
}

resource "aws_accessanalyzer_analyzer" "aws_managed_us_east_1" {
  analyzer_name = "access-analyzer-public"

  provider = aws.us_east_1
}

resource "aws_accessanalyzer_analyzer" "aws_managed_us_west_1" {
  analyzer_name = "access-analyzer-public"

  provider = aws.us_west_1
}

resource "aws_accessanalyzer_analyzer" "aws_managed_us_west_2" {
  analyzer_name = "access-analyzer-public"

  provider = aws.us_west_2
}

resource "aws_accessanalyzer_analyzer" "aws_managed_ap-south-1" {
  analyzer_name = "access-analyzer-public"

  provider = aws.ap-south-1
}

resource "aws_accessanalyzer_analyzer" "aws_managed_ap-northeast-3" {
  analyzer_name = "access-analyzer-public"

  provider = aws.ap-northeast-3
}

resource "aws_accessanalyzer_analyzer" "aws_managed_ap-northeast-2" {
  analyzer_name = "access-analyzer-public"

  provider = aws.ap-northeast-2
}

resource "aws_accessanalyzer_analyzer" "aws_managed_ap-southeast-1" {
  analyzer_name = "access-analyzer-public"

  provider = aws.ap-southeast-1
}

resource "aws_accessanalyzer_analyzer" "aws_managed_ap-southeast-2" {
  analyzer_name = "access-analyzer-public"

  provider = aws.ap-southeast-2
}

resource "aws_accessanalyzer_analyzer" "aws_managed_ap-northeast-1" {
  analyzer_name = "access-analyzer-public"

  provider = aws.ap-northeast-1
}

resource "aws_accessanalyzer_analyzer" "aws_managed_ca-central-1" {
  analyzer_name = "access-analyzer-public"

  provider = aws.ca-central-1
}

resource "aws_accessanalyzer_analyzer" "aws_managed_eu-central-1" {
  analyzer_name = "access-analyzer-public"

  provider = aws.eu-central-1
}

resource "aws_accessanalyzer_analyzer" "aws_managed_eu-west-1" {
  analyzer_name = "access-analyzer-public"

  provider = aws.eu-west-1
}

resource "aws_accessanalyzer_analyzer" "aws_managed_eu-west-2" {
  analyzer_name = "access-analyzer-public"

  provider = aws.eu-west-2
}

resource "aws_accessanalyzer_analyzer" "aws_managed_eu-west-3" {
  analyzer_name = "access-analyzer-public"

  provider = aws.eu-west-3
}

resource "aws_accessanalyzer_analyzer" "aws_managed_eu-north-1" {
  analyzer_name = "access-analyzer-public"

  provider = aws.eu-north-1
}

resource "aws_accessanalyzer_analyzer" "aws_managed_sa-east-1" {
  analyzer_name = "access-analyzer-public"

  provider = aws.sa-east-1
}