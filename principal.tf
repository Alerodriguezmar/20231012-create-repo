provider "github" {
    token="#"
}

resource "github_repository" "example" {
  name        = "20231012-create-repo"
  description = "Create Repo"
  visibility  = "public"
  auto_init   = true
}

resource "github_branch" "branch1" {
  repository = github_repository.example.name
  branch     = "branch1"
}

resource "github_branch" "branch2" {
  repository = github_repository.example.name
  branch     = "branch2"
}

resource "github_branch" "branch3" {
  repository = github_repository.example.name
  branch     = "branch3"
}
