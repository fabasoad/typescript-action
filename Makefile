SHELL := /bin/bash

default:
	@read -p "Project title: " repo_title; \
	export REPO_TITLE=$$repo_title; \
	read -p "Project owner ($$(git config user.name)): " repo_owner; \
	[ -z "$$repo_owner" ] && repo_owner=$$(git config user.name); \
	export REPO_OWNER=$$repo_owner; \
	read -p "Project owner's display name ($$(git config user.name)): " repo_owner_display_name; \
	[ -z "$$repo_owner_display_name" ] && repo_owner_display_name=$$(git config user.name); \
	export REPO_OWNER_DISPLAY_NAME=$$repo_owner_display_name; \
	read -p "Project name ($$(basename `git rev-parse --show-toplevel`)): " repo_name; \
	[ -z "$$repo_name" ] && repo_name=$$(basename `git rev-parse --show-toplevel`); \
	export REPO_NAME=$$repo_name; \
	read -p "CodeClimate maintainability badge (leave empty if you do not have it): " cc_maintainability_badge; \
	if [[ -z "$$cc_maintainability_badge" ]] ; then cc_maintainability_badge=''; else cc_maintainability_badge="$$cc_maintainability_badge "; fi; \
	export CC_MAINTAINABILITY_BADGE=$$cc_maintainability_badge; \
	read -p "CodeClimate test coverage badge (leave empty if you do not have it): " cc_test_coverage_badge; \
	if [[ -z "$$cc_test_coverage_badge" ]] ; then cc_test_coverage_badge=''; else cc_test_coverage_badge="$$cc_test_coverage_badge "; fi; \
	export CC_TESTS_COVERAGE_BADGE=$$cc_test_coverage_badge; \
	envsubst < README.md.template > README.md; \
	rm -f README.md.template; \
	envsubst < action.yml.template > action.yml; \
	rm -f action.yml.template; \
	envsubst < CONTRIBUTING.md.template > CONTRIBUTING.md; \
	rm -f CONTRIBUTING.md.template; \
	export LICENSE_YEAR=$(date +'%Y'); \
	envsubst < LICENSE.template > LICENSE; \
	rm -f LICENSE.template; \
	envsubst < package.json.template > package.json; \
	rm -f package.json.template; \
	envsubst < .github.template/pull_request_template.md > .github.template/pull_request_template.md; \
	envsubst < .github.template/ISSUE_TEMPLATE/bug_report.md > .github.template/ISSUE_TEMPLATE/bug_report.md; \
	envsubst < .github.template/ISSUE_TEMPLATE/feature_request.md > .github.template/ISSUE_TEMPLATE/feature_request.md
	@rm -rf .github
	@mv .github.template .github
	