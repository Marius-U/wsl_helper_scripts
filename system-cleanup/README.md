# System Cleanup Script (`system-cleanup.sh`)

## Purpose

This script automates common system cleanup tasks in Debian-based Linux distributions (like Ubuntu) to help free up disk space. 

It performs the following actions:
*   Clears the APT package cache (`/var/cache/apt/archives`).
*   Removes unused dependency packages.
*   Deletes old, rotated log files from `/var/log`.
*   Removes temporary files older than 7 days from `/tmp`.

---

## ⚠️ Warning: Requires Sudo

This script performs system-level cleanup and therefore requires administrative privileges. It will prompt you to enter your password to run with `sudo`.

**Use with caution.** Review the script's commands if you are unsure about what they do.

---

## Usage

Navigate to the script's directory and run it. You will be prompted for your password.

```bash
cd system-cleanup
./system-cleanup.sh
```

---

## Installation for Global Access

1.  **Make the script executable:**

    ```bash
    chmod +x system-cleanup.sh
    ```

2.  **Move it to a directory in your PATH:**

    ```bash
    sudo mv system-cleanup.sh /usr/local/bin/cleanup
    ```

3.  Now you can run the `cleanup` command from any directory:

    ```bash
    sudo cleanup
    ```
