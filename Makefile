# SPDX-FileCopyrightText: Copyright (c) 2024 Yegor Bugayenko
# SPDX-License-Identifier: MIT

.PHONY: all test clean

test:
	docker run --rm -v "$$(pwd):/w" "$$(docker build -q .)"

clean:
	rm -f *.dvi *.pdf *.fls *.aux *.fdb_latexmk *.log
