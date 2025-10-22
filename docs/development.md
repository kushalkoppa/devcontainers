# V-ECU Level 1 Development Guide

## Prerequisites
- VS Code with Dev Containers extension
- Access to dSPACE SystemDesk CLI installer
- License file or network license server credentials

## Getting Started
1. Clone this repository.
2. Open the folder in VS Code.
3. When prompted, reopen in container. The container installs base toolchains automatically.
4. Provide a SystemDesk installer archive by placing it in the workspace and setting the `SYSTEMDESK_INSTALLER` environment variable in your Dev Container configuration (see example below).
5. Expose your license file inside the container using a bind mount or by pointing `DS_LICENSE_FILE` to a license server (e.g., `27000@licenses.company.local`).

### Example: devcontainer.json overrides
Add the following to your personal `.devcontainer/devcontainer.json` overrides:
```jsonc
{
  "containerEnv": {
    "SYSTEMDESK_INSTALLER": "installers/SystemDeskCLI.tar.gz",
    "DS_LICENSE_FILE": "/workspaces/devcontainers/licenses/license.dat"
  },
  "mounts": [
    "source=/absolute/path/to/license.dat,target=/workspaces/devcontainers/licenses/license.dat,type=bind,consistency=cached"
  ]
}
```

## Importing AUTOSAR Configuration
Use the helper script to run SystemDesk imports:
```bash
./scripts/import_arxml.sh
```
Generated artifacts are written to `asw/generated` with logs in `logs/systemdesk-import.log`.

## Building the ASW
```bash
./scripts/build.sh
```
Artifacts are produced in `asw/build`. The script writes build logs to `logs/build.log`.

## Testing
Run CTest after the build completes:
```bash
ctest --test-dir asw/build
```

## Debugging
- Use the preconfigured `ASW GDB Debug` launch configuration in VS Code.
- Adjust `launch.json` to connect to remote targets or simulators by adding `target remote` commands as needed.
- Store debugger helper scripts in `debug/scripts/`.

## Continuous Integration
All CI runs reuse the Dev Container definition via GitHub Actions. See `.github/workflows/asw-ci.yml` for details on build and test jobs. Secrets such as `DS_LICENSE_SERVER` should be added in the GitHub repository settings.
