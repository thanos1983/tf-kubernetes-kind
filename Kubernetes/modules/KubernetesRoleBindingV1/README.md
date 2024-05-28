# A RoleBinding may be used to grant permission at the namespace level.

## Sample of use:

```bash
module "kubernetes_role_binding_<project>" {
  source   = "git::https://example.com/kubernetes_role_binding_<my_repo>.git"
  metadata_block = {
    .
    .
    .
  }
  .
  .
  .
}
```

### Variables:

```bash
- metadata_block (Required)
- role_ref_block (Required)
- subject_blocks (Required)
```

### Output:

```bash
- generation
- resource_version
- uid
```

#### How to import the module

Sample of code:

````bash
terraform import module.test_kubernetes_role_binding.kubernetes_role_binding_v1.role_binding_v1 default/example_role_binding
````

###### More information can be found on the official document [kubernetes_role_binding_v1](https://registry.terraform.io/providers/hashicorp/kubernetes/latest/docs/resources/role_binding_v1)