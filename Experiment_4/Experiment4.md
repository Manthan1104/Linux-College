# Experiment 4

---

## Experiment Description
This lab focuses on managing directories, setting permissions using symbolic and octal methods, and configuring the `umask` for a user. The tasks include creating directories, modifying permissions, and ensuring proper access control.

---

## Approach

### 1. Creating the `/home/consultants` Directory
The `mkdir` command is used to create the directory.

#### Command:
```bash
sudo mkdir /home/consultants
```

#### Screenshot:
![Creating the consultants directory](./mkdir.png)

---

### 2. Adding Write Permission to the `consultants` Group
The `chmod` command with the symbolic method is used to grant write permissions to the group.

#### Command:
```bash
sudo chmod g+w /home/consultants
```

#### Explanation:
- `g+w`: Adds write (`w`) permission for the group (`g`).

#### Screenshot:
![Adding write permission to the group](./chmod.png)

---

### 3. Restricting Access for Others
The `chmod` command with the octal method is used to restrict access for others.

#### Command:
```bash
sudo chmod 770 /home/consultants
```

#### Explanation:
- `770`: 
  - `7` (owner): Full permissions (read, write, execute).
  - `7` (group): Full permissions (read, write, execute).
  - `0` (others): No permissions.

#### Screenshot:
![Setting permissions using the octal method](./chmod770.png)

---

### 4. Verifying Directory Permissions
The `ls -ld` command is used to check the permissions of the directory.

#### Command:
```bash
ls -ld /home/consultants
```

#### Expected Output:
```
drwxrwx--- 2 root root 4096 Mar 20 11:41 /home/consultants
```

#### Screenshot:
![Verifying directory permissions](./lsld.png)

---

### 5. Modifying the Default `umask` for a User
The `umask` determines the default permissions for newly created files and directories.

#### Steps:
1. Switch to the `operator1` user:
   ```bash
   sudo su - operator1
   ```
2. Update the `umask` value in the user's shell configuration file:
   ```bash
   echo "umask 007" >> ~/.bashrc
   ```
3. Apply the changes:
   ```bash
   source ~/.bashrc
   ```
4. Verify the updated `umask`:
   ```bash
   umask
   ```

#### Explanation:
- `umask 007`: 
  - `0` (owner): Full permissions.
  - `0` (group): Full permissions.
  - `7` (others): No permissions.

#### Screenshot:
![Changing and verifying umask](./umask.png)

---

### 6. Confirming the Updated `umask`
To confirm the new `umask`, create a file and a directory, then check their permissions.

#### Commands:
```bash
touch testfile
mkdir testdir
ls -l
```

#### Expected Output:
- File permissions: `-rw-rw----`
- Directory permissions: `drwxrwx---`

#### Screenshot:
![Confirming umask with new file and directory](./umaskconfirm.png)

---

## Conclusion
In this lab, you practiced:
1. Creating directories and managing their permissions using symbolic and octal methods.
2. Restricting access to specific users and groups.
3. Configuring the `umask` to control default permissions for files and directories.

These techniques are essential for managing file systems and ensuring proper access control in Linux environments.
