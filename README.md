# WSL Helper Scripts

This repository is a collection of useful scripts designed to improve and simplify the developer experience within the Windows Subsystem for Linux (WSL).

---

## Available Scripts

Currently, the following scripts are available:

*   **[win-open](./win-open/)**: A script to open files or directories from the WSL command line in their default Windows application. 
*   **[sys-info](./sys-info/)**: A script that displays a clean dashboard of your WSL system's key metrics like memory, CPU, and disk usage.
*   **[quick-backup](./quick-backup/)**: A script that provides a simple way to create a compressed, timestamped backup of any file or directory.
*   **[system-cleanup](./system-cleanup/)** A script that automates common system cleanup tasks in Debian-based Linux distributions (like Ubuntu) to help free up disk space.

---

## How to Add a New Helper Script

To contribute a new script, please follow these steps to ensure consistency across the project.

### 1. Use the Template

A `template_script` directory exists in this repository. To start a new script, make a copy of this directory:

```bash
cp -r template_script/ new_script_name/
```

Replace `new_script_name/` with the name of your script (e.g., `docker-manager/`).

### 2. Rename the Files

Navigate into your new directory and rename the script file:

```bash
cd new_script_name/
mv template.sh new_script_name.sh
```

### 3. Implement Your Script

Open the `new_script_name.sh` file and add your script's logic. The template file contains comments to guide you.

### 4. Document Your Script

This is a critical step. Open the `README.md` file in your script's directory and fill out the template. Replace the bracketed placeholders (e.g., `[Script Name]`) with information specific to your script. A good README explains:

*   The script's **purpose**.
*   **Usage** instructions with clear examples.
*   **Installation** steps for global access.

By following these steps, you help keep the project organized and easy for others to use and contribute to.
