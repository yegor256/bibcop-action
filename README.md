# Bibcop Github Action

[![test](https://github.com/yegor256/bibcop-action/actions/workflows/test.yml/badge.svg)](https://github.com/yegor256/bibcop-action/actions/workflows/test.yml)
[![License](https://img.shields.io/badge/license-MIT-green.svg)](https://github.com/yegor256/bibcop-action/blob/master/LICENSE.txt)

Checks the quality of all BibTeX `.bib` files in the repository, using [bibcop].

```yaml
name: bibcop
'on':
  push:
    branches:
      - master
  pull_request:
    branches:
      - master
jobs:
  bibcop:
    runs-on: ubuntu-24.04
    steps:
      - uses: actions/checkout@master
      - uses: yegor256/bibcop-action@0.0.3
```

## How to Contribute

In order to test this action, install [GNU make] just run:

```bash
make
```

This should build a new Docker image and then try to use it
in order to render a simple `test.tex` document. You need to have
[Docker] installed.

[bibcop]: https://github.com/yegor256/bibcop
[GNU make]: https://www.gnu.org/software/make/
[Docker]: https://docs.docker.com/get-docker/
