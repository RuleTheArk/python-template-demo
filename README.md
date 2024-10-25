# python-template-demo

[![Build Status](https://github.com/RuleTheArk/python-template-demo/actions/workflows/ci.yml/badge.svg)](https://github.com/RuleTheArk/python-template-demo/actions/workflows/ci.yml)
[![Build Status](https://github.com/RuleTheArk/python-template-demo/actions/workflows/mega-linter.yml/badge.svg)](https://github.com/RuleTheArk/python-template-demo/actions/workflows/mega-linter.yml)
[![Build Status](https://github.com/RuleTheArk/python-template-demo/actions/workflows/codeql.yml/badge.svg)](https://github.com/RuleTheArk/python-template-demo/actions/workflows/codeql.yml)

[![Code style: black](https://img.shields.io/badge/code%20style-black-000000.svg)](https://github.com/psf/black)
[![Linting: Ruff](https://img.shields.io/endpoint?url=https://raw.githubusercontent.com/charliermarsh/ruff/main/assets/badge/v2.json)](https://github.com/astral-sh/ruff)
[![Checked with mypy](https://www.mypy-lang.org/static/mypy_badge.svg)](https://mypy-lang.org/)
[![pipenv-managed](https://img.shields.io/badge/pipenv-managed-blue)](https://pipenv.pypa.io/en/latest/)
[![License - MIT](https://img.shields.io/badge/licence%20-MIT-1ac403.svg)](https://github.com/RuleTheArk/python-template-demo/blob/main/LICENSE)

My app

---

## Table of Contents

[//]: # (:TODO: Enable link checking once https://github.com/tcort/markdown-link-check/issues/250 is resolved.)
<!-- markdown-link-check-disable -->
- [Getting Started](#getting-started)
    - [Pre-requisites](#pre-requisites)
    - [Installation](#installation)
- [Development](#development)
    - [Run Tests with Coverage](#run-tests-with-coverage)
    - [Linting and Formatting](#linting-and-formatting)
- [Contributing](#contributing)
- [License](#license)
<!-- markdown-link-check-enable -->

## Getting Started

To get a local copy up and running, follow these simple steps.

### Pre-requisites

Ensure you have the following installed:

1. **Python**: Version specified in `.python-version`. We recommend using [pyenv](https://github.com/pyenv/pyenv) for
   managing Python versions.
2. **[Pipenv](https://pipenv.pypa.io/en/latest/)**: This is used to manage package dependencies and virtual
   environments.
3. **[Docker](https://docs.docker.com/engine/install/)**
4. **Operation System**: Ubuntu/MacOS

### Installation

1. Clone the repository and install the required dependencies.

   ```bash
   git clone https://github.com/RuleTheArk/python-template-demo.git
   ```

2. Install dependencies

   [Pipenv](https://pipenv.pypa.io/en/latest/) is used to manage dependencies in this project. For more information, read
   the [Pipenv documentation](https://pipenv.pypa.io/en/latest/).

   To install all dependencies, including development dependencies, run:

   ```bash
   make install-dev
   ```

   To install only production dependencies, run:

   ```bash
   make install
   ```

3. Run the application

   ```bash
   make run
   ```

## Development

Get started with development by running the following commands.
Before proceeding, make sure you have the development dependencies installed using the `make install-dev` command.

A Makefile is provided to simplify common development tasks. To view all available commands, run:

```bash
make
```

### Run Tests with Coverage

The unit tests are written using the [pytest](https://docs.pytest.org/en/stable/) framework. To run the tests and check
coverage, run:

```bash
make test
```

### Linting and Formatting

Various tools are used to lint and format the code in this project.

#### Python

The project uses [Ruff](https://github.com/astral-sh/ruff), [pylint](https://pylint.pycqa.org/en/latest/index.html)
and [black](https://black.readthedocs.io/en/stable/) for linting and formatting of the Python code.

The tools are configured using the `pyproject.toml` file.

To lint the Python code, run:

```bash
make lint
```

To auto-format the Python code, and correct fixable linting issues, run:

```bash
make format
```

#### MegaLinter (Lint/Format non-python files)

[MegaLinter](https://github.com/oxsecurity/megalinter) is utilised to lint the non-python files in the project.
It offers a single interface to execute a suite of linters for multiple languages and formats, ensuring adherence to
best practices and maintaining consistency across the repository without the need to install each linter individually.

MegaLinter examines various file types and tools, including GitHub Actions, Shell scripts, Dockerfile, etc. It is
configured using the `.mega-linter.yml` file.

To run MegaLinter, ensure you have **Docker** installed on your system.

> Note: The initial run may take some time to download the Docker image. However, subsequent executions will be
> considerably faster due to Docker caching. :rocket:

To start the linter and automatically rectify fixable issues, run:

```bash
make megalint
```

## Contributing

See [CONTRIBUTING.md](CONTRIBUTING.md) for details.

## License

See [LICENSE](LICENSE) for details.
