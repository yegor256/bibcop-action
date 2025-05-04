#!/bin/bash

# SPDX-FileCopyrightText: Copyright (c) 2024 Yegor Bugayenko
# SPDX-License-Identifier: MIT

set -ex -o pipefail

cd "${GITHUB_WORKSPACE-/w}"

read -r -a opts <<< "${INPUT_OPTS}"

bibs=$(find . -name '*.bib')

if [ -z "${bibs}" ]; then
    echo "There are no .bib files in the repository"
    exit
fi

echo "Version 0.0.4"

echo "${bibs}" | while IFS= read -r bib; do
    bibcop.pl "${opts[@]}" "${bib}"
done
