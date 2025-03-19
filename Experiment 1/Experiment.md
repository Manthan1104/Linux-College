# Lab 1 

---

## Experiment Description
This lab focuses on creating files and directories in Linux using commands like `touch` and `mkdir`.

---

## Approach

### 1. Creating Multiple Files
The `touch` command with **brace expansion** is used to create multiple files efficiently.

#### Syntax:
```bash
touch <filename_pattern>
```

#### Example:
```bash
touch song{1..6}.mp3 snap{1..6}.jpg film{1..6}.avi
```

---

### 2. Creating Multiple Directories
The `mkdir` command is used to create multiple directories in one go.

#### Syntax:
```bash
mkdir <directory_names>
```

#### Example:
```bash
mkdir friends family work
```

---

### 3. Verifying Created Files and Directories
The `ls` command is used to list the created files and directories.

#### Syntax:
```bash
ls
```

---

## Snippets of the Task Performed

### 1. Creating Files , Directories and verifying them
![Creating Files and Directories](Experiment_1/Output1.png)

---

## Conclusion
This lab demonstrated how to:
- Create multiple files using `touch` with brace expansion.
- Create multiple directories using `mkdir`.
- Verify the created files and directories using `ls`.

These commands are essential for efficient file and directory management in Linux.
