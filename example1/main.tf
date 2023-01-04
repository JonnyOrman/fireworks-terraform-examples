module "my_fireworks_project" {
  source = "git@github.com:jonnyorman/fireworks-terraform.git//modules/fireworks_project"

  project = "fireworks-terraform-example1"
  region  = "europe-west2"
  zone    = "europe-west2a"

  collection_name = "entities"
}
