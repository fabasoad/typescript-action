# Template for TypeScript GitHub Action

![GitHub release](https://img.shields.io/github/v/release/fabasoad/typescript-action?include_prereleases) ![YAML Lint](https://github.com/fabasoad/typescript-action/workflows/YAML%20Lint/badge.svg)

Are you going to create a new GitHub action and don't know how to start? This template project is exactly for you! All what you need to do is:

- [Create a new repository from this template project](https://docs.github.com/en/github/creating-cloning-and-archiving-repositories/creating-a-repository-from-a-template).
- Follow the [instructions](#how-to-use).

After that half of a work is done :sunglasses:

## What you will have out of the box

- The following configured CI pipelines:
  - `Security tests` using [Snyk](https://snyk.io) and [CodeQL](https://github.com/github/codeql-action).
  - Twice a month check `npm` updates and create PR automatically in case of any new versions are exist.
  - `Create release` pipeline that will create a new release when you merge your MR into `main` branch.
  - `Unit tests` pipeline that will run `lint` and `test` commands on each push to `main`, `feature/*` or `bugfix/*` branch.
  - `Yaml Lint` pipeline that will lint `yaml` files in case of any of them have been changed.
- `PR`, `Bug report` and `Feature request` GitHub templates.
- `README`, `LICENSE` and `Contributing` documentation files.
- `git` hooks that are:
  - checking that you're **not** committing into `main` branch.
  - checking that you're **not** committing any sensitive information.
  - running `lint` and `test` commands on each `git push`.
  - building `dist/index.js` file (that is used as a main file for GitHub Action) on each `git commit`.
- VS Code settings file that have some basic settings for easier development.

## How to use

### TL;DR

```bash
make
```

### Prerequisites

- `Make` ([Windows](http://gnuwin32.sourceforge.net/packages/make.htm), [MacOS](https://formulae.brew.sh/formula/make), [Linux](https://askubuntu.com/a/272020))
- `yarn`

### Setup secrets

Go to your repository in GitHub and click on "Settings" tab. Then choose "Secrets" on a left panel and add the following new secrets:

- `CC_TEST_REPORTER_ID` - CodeClimate Reported ID. `[1]`
- `SNYK_API_TOKEN` - Snyk API Token. `[2]`

### Setup repository

- Create new repository and use this repository as a template.
- Clone newly created repository to your machine.
- Run `make` command and follow the instructions.
- Enjoy!

## Details

### Parameters that you need to input

- `Project title` is an actual GitHub Action name. This is what you will see in Marketplace as a title.
- `Project owner` is an owner of this repository. Basically it's <https://github.com/{THIS}/some-project> part.
- `Project owner's display name` is the owner's name that is used in public files, like `LICENSE`, `package.json`, `action.yml`, etc.
- `Project name` is a name of this repository. Basically it's <https://github.com/owner/{THIS}> part.
- `CodeClimate maintainability badge` is a badge of CodeClimate maintainability result. `[3]`
- `CodeClimate test coverage badge` is a badge of CodeClimate test coverage result. `[3]`

> `[1]` Go to [CodeClimate](https://codeclimate.com/) and Login to "Quality" section. Then choose your project from the list and go to "Repo Settings" tab. On the left panel you can find "Test Coverage" tab. Find "TEST REPORTED ID" section and click on "Copy" button.
>
> `[2]` Go to [Snyk](https://snyk.io/) and Login. Hover cursor on your name in the top right corner and choose "General Settings". In "General" tab find "API Token" section and "click to show" the token. Copy it.
>
> `[3]` Go to [CodeClimate](https://codeclimate.com/) and Login to "Quality" section. Then choose your project from the list and go to "Repo Settings" tab. On the left panel you can find "Badges" tab. Choose "Markdown" and click on "Copy" button, then paste it on the screen where you running setup.
