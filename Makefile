SHELL = /usr/bin/env bash -xeuo pipefail

stack_name:=
github_org:=

deploy:
	sam deploy \
		--stack-name $(stack_name) \
		--template-file template.yml \
		--parameter-overrides PrefixGitHubRepository=$(github_org)/* \
		--capabilities CAPABILITY_IAM CAPABILITY_NAMED_IAM \
		--no-fail-on-empty-changeset

describe:
	aws cloudformation describe-stacks \
		--stack-name $(stack_name) \
		--query Stacks[0].Outputs

.PHONY: \
	deploy \
	describe

