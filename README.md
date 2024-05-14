# tf-kubernetes-kind

This is a minor demo of Hashicorp terraform module that can modify kubernetes resources

This demo is based on the tutorial of
Hashicorp [Manage Kubernetes resources via Terraform](https://developer.hashicorp.com/terraform/tutorials/kubernetes/kubernetes-provider)
for kind.

## Prerequisites

The user needs to have pre-installed the following packages:

* [kind](https://kind.sigs.k8s.io/)
* [terraform-cli](https://developer.hashicorp.com/terraform/tutorials/aws-get-started/install-cli)
* [kubectl ](https://kubernetes.io/docs/tasks/tools/)

### Providers

This Tutorial aims to start using the terraform kubernetes
provider [terraform/kubernetes](https://registry.terraform.io/providers/hashicorp/kubernetes/latest).

Sample of code:

````bash
terraform {
  required_providers {
    kubernetes = {
      source  = "hashicorp/kubernetes"
      version = "2.30.0"
    }
  }
}

provider "kubernetes" {
  # Configuration options
}
````