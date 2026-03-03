# files.solarlapse.com

[![dst](../../actions/workflows/dst.yml/badge.svg)](../../actions/workflows/dst.yml) 
[![suvi](../../actions/workflows/suvi.yml/badge.svg)](../../actions/workflows/suvi.yml) 
[![lasco](../../actions/workflows/lasco.yml/badge.svg)](../../actions/workflows/lasco.yml) 
[![enlil](../../actions/workflows/enlil.yml/badge.svg)](../../actions/workflows/enlil.yml)
[![ovation](../../actions/workflows/ovation.yml/badge.svg)](../../actions/workflows/ovation.yml) 
[![public](../../actions/workflows/public.yml/badge.svg)](../../actions/workflows/public.yml)

An automated data pipeline and distribution platform for real-time space weather telemetry. It synchronizes satellite imagery, geomagnetic indices, and predictive models into a centralized repository.

## Setup

Before running the project, you must initialize your environment variables:

```sh
cp .env.example .env
```

## Tasks

This project uses [Task](https://taskfile.dev) as a task runner.

### Available Tasks

```sh
# Run default tasks (download all files)
task

# List all tasks
task --list-all
```

## Documentation

Below you will find a list of documentation for tools used in this project.

- **Nix**: Nix Package Manager - [Docs](https://wiki.nixos.org/wiki/Nix)
- **Nix Flakes**: An Experimental Feature for Managing Dependencies of Nix Projects - [Docs](https://wiki.nixos.org/wiki/Flakes)
- **GitHub Actions**: Automation and Execution of Software Development Workflows - [Docs](https://docs.github.com/en/actions)
- **Task**: A Task Runner for Automation - [Docs](https://taskfile.dev/)

## Found a Bug?

Thank you for your message! Please fill out a [bug report](../../issues/new?assignees=&labels=&template=bug_report.md&title=).

## License

This project is licensed under the [GNU General Public License v3.0](https://choosealicense.com/licenses/gpl-3.0/).
