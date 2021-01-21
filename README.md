# ${REPO_TITLE} GitHub Action

<!--description

REPO_TITLE - Title of this GitHub Action, e.g. "Setup Wren CLI"
REPO_OWNER - Owner of the repository, e.g. "fabasoad"
REPO_OWNER_DISPLAY_NAME - Author full name, e.g. "John Doe"
REPO_NAME - Repository name, e.g. "setup-wren-action"

description-->
![GitHub release](https://img.shields.io/github/v/release/${REPO_OWNER}/${REPO_NAME}?include_prereleases) ![Unit Tests](https://github.com/${REPO_OWNER}/${REPO_NAME}/workflows/Unit%20Tests/badge.svg) ![YAML Lint](https://github.com/${REPO_OWNER}/${REPO_NAME}/workflows/YAML%20Lint/badge.svg) ![Security Tests](https://github.com/${REPO_OWNER}/${REPO_NAME}/workflows/Security%20Tests/badge.svg) [![Total alerts](https://img.shields.io/lgtm/alerts/g/${REPO_OWNER}/${REPO_NAME}.svg?logo=lgtm&logoWidth=18)](https://lgtm.com/projects/g/${REPO_OWNER}/${REPO_NAME}/alerts/) [![Language grade: JavaScript](https://img.shields.io/lgtm/grade/javascript/g/${REPO_OWNER}/${REPO_NAME}.svg?logo=lgtm&logoWidth=18)](https://lgtm.com/projects/g/${REPO_OWNER}/${REPO_NAME}/context:javascript) ${CC_MAINTAINABILITY_BADGE} ${CC_TESTS_COVERAGE_BADGE} [![Known Vulnerabilities](https://snyk.io/test/github/${REPO_OWNER}/${REPO_NAME}/badge.svg?targetFile=package.json)](https://snyk.io/test/github/${REPO_OWNER}/${REPO_NAME}?targetFile=package.json)

[${REPO_TITLE}](https://github.com/${REPO_OWNER}/${REPO_NAME}) GitHub Action.

## Usage

```yaml
name: Setup ${REPO_TITLE}

on: push

jobs:
  setup:
    name: Setup
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@main
      - uses: ${REPO_OWNER}/${REPO_NAME}@main
```

### Result

```bash

```
