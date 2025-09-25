# WSL to Windows Opener (`win-open.sh`)

## Purpose

This script provides a seamless way to open files and directories that are inside your WSL2 environment using their default Windows applications. It acts as a bridge between your Linux command-line workflow and the Windows GUI.

For example, you can open a JPEG file in the Windows Photo Viewer or a project directory in Windows Explorer directly from your WSL terminal.

## Usage

To use the script, navigate into this directory and run it with the path of the file or directory you wish to open.

```bash
# Example: Open the parent directory in Windows File Explorer
./win-open.sh ../

# Example: Open a specific file
./win-open.sh /mnt/c/Users/YourUser/Desktop/document.txt
```

## Installation for Global Access

To use this script from anywhere in your terminal without having to navigate to its directory, you can move it to a location in your system's `PATH`.

1.  **Navigate to this directory:**

    ```bash
    # Assuming you are at the root of the project
    cd win-open
    ```

2.  **Make the script executable:**

    ```bash
    chmod +x win-open.sh
    ```

3.  **Move it to a directory in your PATH:**

    ```bash
    sudo mv win-open.sh /usr/local/bin/win-open
    ```

4.  **(Optional) Create a shorter alias** in your `~/.bashrc` or `~/.zshrc` file:

    ```bash
    alias wo='win-open'
    ```
    After adding the alias, reload your shell configuration (e.g., `source ~/.bashrc`) to use `wo` as a shortcut from anywhere.
