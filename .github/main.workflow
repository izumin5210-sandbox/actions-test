workflow "lint" {
  on = "pull_request"
  resolves = ["izumin5210/actions-reviewdog/golang"]
}

action "izumin5210/actions-reviewdog/golang" {
  uses = "izumin5210/actions-reviewdog/golang"
  secrets = ["GITHUB_TOKEN"]
}
