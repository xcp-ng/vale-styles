# Vates styles for Vale

This repository contains the Vates documentation style rules, configuration,
scripts, and GitHub Action for linting documentation with Vale for Vates style
compliance.

This repository:

  * action.yml
    * The GitHub action.
  * styles/
    * The styles directory to be used by Vale.
  * styles/gitlab
    * The modified version of GitLab's documentation style (see styles/LICENSE for license information).
  * styles/vates
    * style rules specific to Vates
  * setup.sh
    * This script prepares a repository for using Vale against Vates-style documents.

# Using the GitHub Action

To use the GitHub action in another repository, configure your GitHub CI yaml
to use `xcp-ng/vale-styles@vX.Y` and supply it with the glob of the paths that
Vale should lint to the `with:` field.  Below is an example:

```yaml
---
name: Linting
on: [push]

jobs:
  style:
    runs-on: ubuntu-latest
    steps:
      - name: Checkout
        uses: actions/checkout@master
      - name: Style
        uses: xcp-ng/vale-styles@v0.1
        with:
          files: docs/*
```
