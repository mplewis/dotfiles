#!/bin/zsh

export VISUAL=vim
export EDITOR=vim
export AWS_DEFAULT_REGION=us-east-1
export AIRFLOW_HOME=~/airflow
export DOCKER_BUILDKIT=1
export COMPOSE_DOCKER_CLI_BUILD=1
export GOPATH="$HOME/code/go"
export PGO_OPERATOR_NAMESPACE=my-postgresql
export PULUMI_K8S_SUPPRESS_HELM_HOOK_WARNINGS=1

alias gds="git diff --staged"
alias gfp="git fetch --prune"
alias gpforce="git push --force-with-lease"
alias gp="git push"
alias gpp="git pull --prune"
alias gpuoh="git push -u origin HEAD"
alias grao="git remote add origin"
alias gsp="git stash pop"

alias ancestor='diff --old-line-format="" --new-line-format="" <(git rev-list --first-parent master) <(git rev-list --first-parent HEAD) | head -1'
alias as='aws-vault exec'
alias buildit='docker build . -t "$(basename "$(pwd)")-$(git rev-parse --abbrev-ref HEAD)"'
alias dcub='docker-compose up --build'
alias devdiff='git diff $(ancestor) HEAD'
alias k='kubectl'
alias kd='kubectl describe'
alias kg='kubectl get'
alias kgy='kubectl get --output yaml'
alias l="ls -la"
alias ls="exa"
alias lss="l -s size -r"
alias pir="pip install -r"
alias pirr="pir requirements.txt"
alias pira="pirr; pir requirements-dev.txt; pir tests/requirements.txt"
alias prm="poetry run ./manage.py"
alias wip="git add .; git commit -m 'wip' -n"
alias s3cp="as matt.lewis -- aws s3 cp --recursive"
alias tf="terraform"
alias tg="terragrunt"

export PATH="$HOME/code/sh:$HOME/code/go/bin:$HOME/.cargo/bin:$PATH"

eval "$(jump shell zsh)"
