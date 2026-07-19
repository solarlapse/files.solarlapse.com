# files.solarlapse.com

[![dst](../../actions/workflows/dst.yml/badge.svg)](../../actions/workflows/dst.yml)
[![suvi](../../actions/workflows/suvi.yml/badge.svg)](../../actions/workflows/suvi.yml)
[![lasco](../../actions/workflows/lasco.yml/badge.svg)](../../actions/workflows/lasco.yml)
[![enlil](../../actions/workflows/enlil.yml/badge.svg)](../../actions/workflows/enlil.yml)
[![ovation](../../actions/workflows/ovation.yml/badge.svg)](../../actions/workflows/ovation.yml)
[![public](../../actions/workflows/public.yml/badge.svg)](../../actions/workflows/public.yml)

An automated data pipeline and distribution platform for real-time space weather telemetry. It synchronizes satellite imagery, geomagnetic indices, and predictive models into a centralized repository.

## Get Started

To get started with the project, follow these steps:

1. **Clone the repository:**

   ```bash
   git clone https://github.com/solarlapse/files.solarlapse.com.git
   cd files.solarlapse.com
   ```

2. **Initialize project:**

   ```bash
   task init --interactive
   ```

3. **Run project:**

   ```bash
   task
   ```

## Tasks

This project uses [Task](https://taskfile.dev) as a task runner.

### Available Tasks

```bash
# Run default task
task

# List all tasks
task --list-all

# Initialize project
task init

# Format project
task format

# Clean project
task clean
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
