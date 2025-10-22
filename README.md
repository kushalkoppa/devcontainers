# SystemDesk V-ECU Level 1 Dev Container

This repository provides a reference Visual Studio Code Dev Container configuration, automation scripts, and a GitHub Actions pipeline for developing AUTOSAR ASW targeting dSPACE SystemDesk V-ECU Level 1.

## Features
- Ubuntu-based Dev Container with compiler toolchains, Python, and debugging utilities preinstalled
- Optional installer hook for proprietary dSPACE SystemDesk CLI binaries
- Sample AUTOSAR application software project using CMake and CTest
- Helper scripts for configuration import and build orchestration
- VS Code debugging and task configurations tailored for ASW workflows
- GitHub Actions workflow that reuses the Dev Container for builds, tests, and static analysis

## Repository Layout
```
.
├── .devcontainer/        # Dev Container definition and setup helpers
├── .github/workflows/    # GitHub Actions CI/CD pipelines
├── .vscode/              # Editor tasks and debug configurations
├── asw/                  # Sample AUTOSAR ASW project
├── docs/                 # Developer documentation
├── scripts/              # Automation helpers (build/import)
└── requirements.txt      # Python dependencies for automation scripts
```

## Getting Started
1. Install [VS Code](https://code.visualstudio.com/) and the [Dev Containers extension](https://marketplace.visualstudio.com/items?itemName=ms-vscode-remote.remote-containers).
2. Clone this repository and open it in VS Code.
3. Reopen the workspace in the Dev Container when prompted.
4. Provide access to SystemDesk installer archives and license files as described in [`docs/development.md`](docs/development.md).

Refer to [`docs/development.md`](docs/development.md) for detailed usage instructions, including CI configuration and debugging tips.
