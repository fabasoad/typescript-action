# Template for TypeScript GitHub Action

<!--description

REPO_TITLE - Title of this GitHub Action, e.g. "Setup Wren CLI"
REPO_OWNER - Owner of the repository, e.g. "fabasoad"
REPO_OWNER_DISPLAY_NAME - Author full name, e.g. "John Doe"
REPO_NAME - Repository name, e.g. "setup-wren-action"

description-->

## How to use

### Setup repository

- Create new repository and use this repository as a template.
- Clone newly created repository to your machine.
- Run `make` command and follow the instructions.
- Enjoy!

### Setup secrets

Go to your repository in GitHub and click on "Settings" tab. Then choose "Secrets" on a left panel and add the following new secrets:

- `CC_TEST_REPORTER_ID` - CodeClimate Reported ID. `[1]`
- `SNYK_API_TOKEN` - Snyk API Token. `[2]`

## Details

### Parameters that you need to input

- `Project title` is an actual GitHub Action name. This is what you will see in Marketplace as a title.
- `Project owner` is an owner of this repository. Basically it's <https://github.com/{THIS}/some-project> part.
- `Project owner's display name` is a name that is used in `author` field in `package.json` and `action.yml`.
- `Project name` is a name of this repository. Basically it's <https://github.com/owner/{THIS}> part.
- `CodeClimate maintainability badge` is a badge of CodeClimate maintainability result. `[3]`
- `CodeClimate test coverage badge` is a badge of CodeClimate test coverage result. `[3]`

> `[1]` Go to [CodeClimate](https://codeclimate.com/) and Login to "Quality" section. Then choose your project from the list and go to "Repo Settings" tab. On the left panel you can find "Test Coverage" tab. Find "TEST REPORTED ID" section and click on "Copy" button.
>
> `[2]` Go to [Snyk](https://snyk.io/) and Login. Hover cursor on your name in the top right corner and choose "General Settings". In "General" tab find "API Token" section and "click to show" the token. Copy it.
>
> `[3]` Go to [CodeClimate](https://codeclimate.com/) and Login to "Quality" section. Then choose your project from the list and go to "Repo Settings" tab. On the left panel you can find "Badges" tab. Choose "Markdown" and click on "Copy" button, then paste it on the screen where you running setup.
