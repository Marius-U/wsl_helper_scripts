# WSL to Windows Opener (`win-open.sh`)

## Purpose

This script provides a seamless way to open files and directories that are inside your WSL2 environment using their default Windows applications. It acts as a bridge between your Linux command-line workflow and the Windows GUI.

For example, you can open a JPEG file in the Windows Photo Viewer or a project directory in Windows Explorer directly from your WSL terminal.

## Functionality

The script works by taking a single argument: a path to a file or directory within WSL.

1.  It first checks if an argument was provided.
2.  It then uses the built-in `wslpath -w` utility to convert the provided Linux path (e.g., `/home/user/project`) into its corresponding Windows path (e.g., `\\wsl$\\Ubuntu\\home\\user\\project`).
3.  Finally, it uses `cmd.exe /c start` to execute the Windows shell and open the converted path. The `start` command automatically uses the default application for that file type or opens the directory in File Explorer.

## Usage

### 1. Make the script executable

First, you need to give the script execution permissions. Run the following command in your terminal:

```bash
chmod +x win-open.sh
```

### 2. Run the script

To open any file or directory, simply run the script with the path as the first argument.

**Examples:**

*   To open the current directory in Windows File Explorer:

    ```bash
    ./win-open.sh .
    ```

*   To open a specific file (e.g., a picture) in its default Windows application:

    ```bash
    ./win-open.sh /home/user/documents/image.png
    ```

*   To open a project folder in File Explorer:

    ```bash
    ./win-open.sh /home/user/projects/my-app
    ```

### 3. (Recommended) Make it globally accessible

To make the script even more useful, you can move it to a directory that is in your system's `PATH`. This allows you to call it from any directory without having to type the `./` prefix.

1.  Move the script to `/usr/local/bin`:

    ```bash
    sudo mv win-open.sh /usr/local/bin/win-open
    ```

2.  Now you can use it from anywhere:

    ```bash
    win-open image.jpg
    ```

You can also create a shorter alias in your `~/.bashrc` or `~/.zshrc` file:

```bash
alias wo='win-open'
```

After adding the alias, reload your shell configuration (`source ~/.bashrc`) and you can use `wo` as a shortcut:

```bash
wo .
```
