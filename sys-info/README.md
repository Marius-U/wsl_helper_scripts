# System Info Dashboard (`sys-info.sh`)

## Purpose

This script displays a clean and readable dashboard of your current WSL system's key metrics. It's useful for a quick glance at system health and resource usage, such as memory, disk, and CPU load.

## Usage

To use the script, navigate into this directory and run it.

```bash
./sys-info.sh
```

### Sample Output

```
--- System Information Dashboard ---
Hostname:           my-pc
Uptime:             Up 2 hours, 30 minutes
Current User:       username
IP Address:         172.25.160.1

Memory Usage:       1.2G/7.7G (6.1G available)
Root Disk Usage:    50G/251G (25% used)
CPU Load Avg:        0.25 0.18 0.15
------------------------------------
```

## Installation for Global Access

To use this script from anywhere in your terminal, you can move it to a location in your system's `PATH`.

1.  **Navigate to this directory:**

    ```bash
    # Assuming you are at the root of the project
    cd sys-info
    ```

2.  **Make the script executable:**

    ```bash
    chmod +x sys-info.sh
    ```

3.  **Move it to a directory in your PATH:**

    ```bash
    sudo mv sys-info.sh /usr/local/bin/sys-info
    ```

4.  **(Optional) Create a shorter alias** in your `~/.bashrc` or `~/.zshrc` file:

    ```bash
    alias sysinfo='sys-info'
    ```
    After adding the alias, reload your shell configuration (e.g., `source ~/.bashrc`) to use `sysinfo` as a shortcut.
