# Experiment 2

---

## Experiment Description
This lab focuses on using Linux manual (`man`) pages, searching for commands related to `ext4`, and utilizing **brace expansion** to generate custom strings efficiently.

---

## Approach

### 1. Viewing the Manual Page for `gedit`
The `man` command is used to access the manual page for a specific command.

#### Syntax:
```bash
man <command_name>
```

#### Example:
```bash
man gedit
```

#### Explanation:
- Opens the manual page for the `gedit` text editor.

---

### 2. Searching for Commands Related to `ext4`
The `man -k` command searches for commands associated with a specific keyword.

#### Syntax:
```bash
man -k <keyword>
```

#### Example:
```bash
man -k ext4
```

#### Explanation:
- Searches for commands related to the `ext4` file system.

---

### 3. Using Brace Expansion
Brace expansion is used to generate strings efficiently.

#### Example 1: Creating a List of Strings
```bash
echo file_{A,B,C}.txt
```
**Output:**
```
file_A.txt file_B.txt file_C.txt
```

#### Example 2: Creating a Sequence of Numbers
```bash
echo number_{1..5}
```
**Output:**
```
number_1 number_2 number_3 number_4 number_5
```

#### Example 3: Combining Text with Brace Expansion
```bash
echo backup_{2024..2026}_v{1..3}.zip
```
**Output:**
```
backup_2024_v1.zip backup_2024_v2.zip backup_2024_v3.zip backup_2025_v1.zip backup_2025_v2.zip backup_2025_v3.zip backup_2026_v1.zip backup_2026_v2.zip backup_2026_v3.zip
```

---

## Snippets of the Task Performed

### 1. Viewing the `gedit` Manual Page
![gedit man page](screenshots/mangedit.png)

---

### 2. Searching for Commands Related to `ext4`
![Searching ext4](screenshots/search_ext4.png)

---

### 3. Demonstrating Brace Expansion
![Brace Expansion](screenshots/brace_expansion.png)

---

## Conclusion
In this lab, we:
- Used the `man` command to view manual pages.
- Searched for commands related to `ext4` using `man -k`.
- Demonstrated the use of **brace expansion** for generating strings.

These techniques are essential for efficient command-line operations and scripting in Linux.
