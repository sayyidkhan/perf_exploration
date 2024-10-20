# Python Compilation Script

This repository provides a bash script `compile.sh` that automates the execution of Python programs. It simplifies the process by allowing you to run your `.py` files with a single command.

## Prerequisites

Before running the `compile.sh` script, ensure you have Python installed on your system. Follow the installation instructions for your operating system below.

---

## Installation Guide

### Windows

1. Download Python from the official website [here](https://www.python.org/downloads/windows/).
2. Run the installer and ensure that you check the box that says "Add Python to PATH."
3. Open a command prompt and verify the installation by typing:
   ```bash
   python --version
   ```

### macOS

1. Install Python using Homebrew (if you have Homebrew installed):
   ```bash
   brew install python
   ```
2. Verify that Python is installed by typing:
   ```bash
   python3 --version
   ```

### Linux

#### Debian/Ubuntu:
1. Open a terminal and update your package list:
   ```bash
   sudo apt update
   ```
2. Install Python:
   ```bash
   sudo apt install python3
   ```
3. Verify the installation:
   ```bash
   python3 --version
   ```

---

## Running the `compile.sh` Script

Once you have a working Python installation, follow these steps to use the `compile.sh` script.

### Step 1: Clone this Repository

Download or clone the repository to your local machine.

```bash
git clone <repository-url>
cd <repository-directory>
```

### Step 2: Create or Use an Existing Python File

You can create a new Python file or use an existing one. For example, you can use the `matrix_multiplication.py` provided.

### Step 3: Make the `compile.sh` Script Executable

Run the following command to make the script executable:

```bash
chmod +x compile.sh
```

### Step 4: Run the Script

To run your Python program, use the script with the name of the `.py` file as an argument:

```bash
./compile.sh matrix_multiplication.py
```

If you want it to run for more than 10 times:

```bash
./compile.sh matrix_multiplication.py 10
```

This script will:
1. Run the Python file.
2. If the execution is successful, it will print the output along with the execution time.

---

## License

This project is open-source and available under the [MIT License](LICENSE).
```

Let me know if you need anything else!