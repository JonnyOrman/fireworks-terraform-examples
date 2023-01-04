module "my_fireworks_project" {
  source = "git@github.com:jonnyorman/fireworks-terraform.git//modules/fireworks_project"

  project = "fireworks-terraform-example2"
  region  = "europe-west2"
  zone    = "europe-west2a"

  collection_name = "entities"

  topic_name             = "entity-submitted"
  topic_dead_letter_name = "entity-submitted-dead-letter"
  subscription_name      = "entity-create"

  app_name = "entity-inserter"
  app_url  = "https://entity-inserter-abcde12345-nw.a.run.app"

  build_trigger_name = "entity-inserter-modified"

  github_owner     = "JonnyOrman"
  github_repo_name = "fireworks-example2"
}
