DEVELOPING.md

Developer setup and quick commands

1) Install tools (Python, pre-commit, pnpm, Go):
   - Python 3.x, pip
   - pre-commit (`pip install pre-commit`)
   - pnpm (if you use pnpm workspace)
   - Go toolchain

2) Bootstrap (from repo root):
   make install-dev

3) Typical developer flow:
   - Format all files: make format
   - Run linters: make lint
   - Run tests: make test

4) Using pre-commit:
   pre-commit install
   pre-commit run --all-files

5) Creating a PR:
   git checkout -b chore/dev-tooling/pre-commit
   git add .pre-commit-config.yaml Makefile DEVELOPING.md
   git commit -m "chore: add pre-commit + developer setup"
   git push -u origin chore/dev-tooling/pre-commit
   gh pr create --title "chore: add pre-commit and developer setup" --body "Adds pre-commit, Makefile, and DEVELOPING.md to standardize dev setup."
