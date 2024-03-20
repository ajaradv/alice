# Alice Development Setup

Poetry is a popular packaging tool for Python projects. It simplifies the installation, upgrading, and managing of dependencies in your project. Here's how to set up your development environment using Poetry.

TODO:
[ ] Create dev setup script.
[ ] Makefile setup

## Prerequisites

- Manage python versions with pyenv.
- Manage python global packages with pipx
- Python 3.12 installed on your system (check with `python --version` or `python3 --version`)
- Postgres 14.9.9
- `pip` and `virtualenv` or `venv` (comes with Python)
- Create empty virtual folder

```bash
$ python -m venv venv
```

- Install dependencies with poetry

```bash
$ poetry install
```
