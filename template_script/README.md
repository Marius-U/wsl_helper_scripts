# [Script Name]

## Purpose

* **What is the goal of this script?**
* Briefly describe what the script does and what problem it solves for the user.
* e.g., "This script automates the process of creating new project boilerplate from a template."

---

## Usage

* **How does a user run the script?**
* Provide clear, copy-pasteable command examples.
* If the script takes arguments, explain what they are.

```bash
# Example of a simple execution
./[script-name].sh

# Example with arguments
./[script-name].sh [argument1] [argument2]
```

---

## Installation for Global Access

To use this script from anywhere in your terminal, you can move it to a location in your system's `PATH`.

1.  **Make the script executable:**

    ```bash
    chmod +x [script-name].sh
    ```

2.  **Move it to a directory in your PATH:**

    ```bash
    # You can rename the script in the process if you want a shorter command
    sudo mv [script-name].sh /usr/local/bin/[command-name]
    ```

3.  **(Optional) Create an alias** in your `~/.bashrc` or `~/.zshrc` file:

    ```bash
    alias [alias-name]='[command-name]'
    ```
