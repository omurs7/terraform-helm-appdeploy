# Usage
#### Add below code to your provider.tf fileterr

```
provider "helm" {
  kubernetes = {
    config_path = "~/.kube/config"
  }

  registries = [
    {
      url      = "oci://localhost:5000"
      username = "username"
      password = "password"
    },
    {
      url      = "oci://private.registry"
      username = "username"
      password = "password"
    }
  ]
}
```

#### Add below code to your main.tf file

```
module "name" {
  source  = "omurs7/appdeploy/helm"

  name       = "nginx-ingress-controller"
  repository = "https://charts.bitnami.com/bitnami"
  chart      = "nginx-ingress-controller"
}
```

#### Run below command

```
terraform init
terraform apply
```