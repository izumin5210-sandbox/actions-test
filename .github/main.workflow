workflow "lint" {
  on = "pull_request"
  resolves = ["izumin5210/actions-reviewdog/golang@master"]
}

action "izumin5210/actions-reviewdog/golang@master" {
  uses = "izumin5210/actions-reviewdog/golang"
  secrets = ["GITHUB_TOKEN"]
}
