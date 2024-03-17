# Bibcop Github Action

[![test](https://github.com/yegor256/bibcop-action/actions/workflows/test.yml/badge.svg)](https://github.com/yegor256/bibcop-action/actions/workflows/test.yml)
[![License](https://img.shields.io/badge/license-MIT-green.svg)](https://github.com/yegor256/bibcop-action/blob/master/LICENSE.txt)

Checks the quality of all `.bib` files in the repository,
using [bibcop](https://github.com/yegor256/bibcop).

```yaml
name: bibcop
on:
  push:
  pull_request:
jobs:
  bibcop:
    runs-on: ubuntu-22.04
    steps:
      - uses: actions/checkout@master
      - uses: yegor256/bibcop-action@0.0.0
```

## How to Contribute

In order to test this action, just run:

```bash
make test
```

This should build a new Docker image and then try to use it
in order to render a simple `test.tex` document. You need to have
[Docker](https://docs.docker.com/get-docker/) installed.
