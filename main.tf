module "test_cluster_role" {
  source = "git@github.com:thanos1983/terraform//Kubernetes/modules/KubernetesClusterRoleV1"
  metadata_block = {
    name = "terraform-example"
  }

  aggregation_rule_block = {
    cluster_role_selectors_blocks = [
      {
        match_labels = {
          foo = "bar"
        }

        match_expressions_blocks = [
          {
            key      = "environment"
            operator = "In"
            values   = ["non-exists-12345"]
          },
          {
            key      = "environment"
            operator = "In"
            values   = ["non-exists-54321"]
          }
        ]
      }
    ]
  }
}