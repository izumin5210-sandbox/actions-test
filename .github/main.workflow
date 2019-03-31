workflow "lint" {
  on = "pull_request"
  resolves = ["lint and report"]
}

action "lint and report" {
  uses = "izumin5210/actions-reviewdog/golang@master"
  secrets = ["GITHUB_TOKEN"]
}
