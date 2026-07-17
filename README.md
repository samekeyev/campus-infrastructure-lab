# Campus Infrastructure Lab

A practical infrastructure engineering project focused on Linux administration,
automation, monitoring, networking, and operational documentation.

## Project Goals

- Develop practical Linux administration skills
- Build reusable Bash and Python tools
- Automate server configuration
- Implement infrastructure monitoring
- Write operational documentation and runbooks
- Practice Git and GitHub workflows

## Repository Structure

- `scripts/` — system administration tools
- `docs/` — technical documentation and runbooks
- `systemd/` — systemd units and timers
- `tests/` — automated tests
- `examples/` — example configuration files

## Status

The project is under active development.

## System Information Script

The `system-info.sh` script displays basic information about the current Linux system, including the operating system, kernel, uptime, CPU, memory, root filesystem usage, and IPv4 addresses.

### Usage

Run the script from the repository root:

```bash
./scripts/system-info.sh
```

### Example output

```text
Hostname: srv-web-01
Operating system: Debian GNU/Linux 13
Kernel: 6.12.0-amd64
Uptime: 3 days, 4 hours
CPU cores: 8
Memory: 5.2 GiB / 15.6 GiB
Root filesystem: 24G / 50G (48%)
IPv4 addresses:
  eth0: 10.10.10.15/24
  lo: 127.0.0.1/8
```

The script requires Bash and standard Linux utilities available on Debian and Ubuntu.
