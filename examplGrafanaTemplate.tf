provider "grafana" {
   alias = "base"

   url = "http://host.docker.internal:3000"
   auth = "admin:admin"
   org_id = 1
}

# resource "grafana_organization" "my_org" {
#   provider = grafana.base
#   name     = "my_org"
# }

# provider "grafana" {
#   alias  = "my_org"
#   url = "http://host.docker.internal:3000"
#   auth = "admin:admin"
#   org_id = grafana_organization.my_org.org_id
# }


resource "grafana_folder" "my_folder" {
  provider = grafana.base

  title = "Test Folder"
}