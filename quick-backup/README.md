# Quick Backup Script (`quick-backup.sh`)

## Purpose

This script provides a simple way to create a compressed, timestamped backup of any file or directory. It's useful for quickly saving a version of your work or creating a snapshot of important files.

---

## Usage

The script takes a single argument: the path to the file or directory you want to back up.

```bash
# Navigate to the script's directory
cd quick-backup

# Run the script with a target path
# This will create an archive like 'my_project_2025-09-25_16-00-00.tar.gz' in the current directory
./quick-backup.sh /path/to/my_project
```

### Important Notes

*   The backup archive is created in the directory where you run the script.
*   The script is designed to be simple. For advanced backup strategies (e.g., incremental backups, cloud storage), consider more robust tools like `rsync` or `restic`.

---

## Installation for Global Access

To use this script from anywhere, move it to a directory in your system's `PATH`.

1.  **Make the script executable:**

    ```bash
    chmod +x quick-backup.sh
    ```

2.  **Move it to a directory in your PATH:**

    ```bash
    sudo mv quick-backup.sh /usr/local/bin/backup
    ```

3.  Now you can use the `backup` command from any directory:

    ```bash
    backup /path/to/my_other_project
    ```
