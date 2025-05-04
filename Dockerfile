# SPDX-FileCopyrightText: Copyright (c) 2024 Yegor Bugayenko
# SPDX-License-Identifier: MIT

FROM ubuntu:24.04

LABEL "repository"="https://github.com/yegor256/bibcop-action"
LABEL "maintainer"="Yegor Bugayenko"
LABEL "version"="0.0.4"

RUN apt-get -y update \
  && apt-get -y --no-install-recommends install wget=* \
  && apt-get clean \
  && rm -rf /var/lib/apt/lists/*

RUN wget --quiet --no-check-certificate https://yegor256.github.io/bibcop/bibcop.pl \
  && mv bibcop.pl /usr/bin \
  && chmod a+x /usr/bin/bibcop.pl

WORKDIR /home
COPY entry.sh /home

ENTRYPOINT ["/home/entry.sh"]
