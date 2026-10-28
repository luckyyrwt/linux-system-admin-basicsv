# Linux Command Handbook
**Purpose:** Beginner Linux reference for AWS and DevOps practice.

---

## 1. Navigation and Directory Listing

| Command | Use |
|---|---|
| `pwd` | Print current working directory |
| `ls` | List files and directories |
| `ls -l` | Detailed listing with permissions, owner, size and date |
| `ls -a` | Show hidden files too |
| `ls -la` | Detailed listing including hidden files |
| `cd directory` | Enter a directory |
| `cd ..` | Go to parent directory |
| `cd ~` | Go to home directory |
| `cd -` | Return to previous directory |
| `tree` | Display directory structure |
| `tree -L 2` | Show tree up to 2 levels |

## 2. Create and Manage Files and Directories

| Command | Use |
|---|---|
| `mkdir folder` | Create a directory |
| `mkdir -p a/b` | Create nested directories |
| `rmdir folder` | Remove an empty directory |
| `touch file.txt` | Create an empty file or update its timestamp |
| `cat file.txt` | Display file contents |
| `cat > file.txt` | Write text; overwrite existing content |
| `cat >> file.txt` | Append text to a file |
| `cp source destination` | Copy a file |
| `cp -r source_dir destination_dir` | Copy a directory recursively |
| `mv old.txt new.txt` | Rename a file |
| `mv file.txt folder/` | Move a file into a directory |
| `rm file.txt` | Delete a file |
| `rm -r folder` | Delete a directory and its contents |
| `find . -type f` | Find files under current directory |
| `find . -type d` | Find directories under current directory |
| `find . -name "*.txt"` | Find files matching a name pattern |

**Safety:** `rm` usually bypasses Trash. Check the path before deleting. `>` overwrites existing content; `>>` appends.

## 3. Display, Search and Count Text

| Command | Use |
|---|---|
| `echo "text"` | Print text |
| `echo "text" > file.txt` | Write text, replacing existing content |
| `echo "text" >> file.txt` | Append text |
| `grep "word" file.txt` | Search for matching lines |
| `grep -i "word" file.txt` | Case-insensitive search |
| `grep -n "word" file.txt` | Show matching line numbers |
| `grep -v "word" file.txt` | Show lines that do not match |
| `grep -r "word" folder/` | Search recursively in files |
| `grep -c "word" file.txt` | Count matching lines |
| `grep -w "word" file.txt` | Match a whole word |
| `grep -in "word" file.txt` | Case-insensitive search with line numbers |

## 4. Vim Editor

| Command / Key | Use |
|---|---|
| `vim file.txt` | Open or create a file |
| `i` | Enter Insert mode |
| `Esc` | Return to Normal mode |
| `:w` | Save changes |
| `:w filename` | Save as another filename |
| `:q` | Quit if no unsaved changes |
| `:wq` | Save and quit |
| `:q!` | Quit without saving changes |
| `:wq!` | Force write and quit, if permitted |
| `dd` | Delete current line |
| `yy` | Copy (yank) current line |
| `p` | Paste after cursor |
| `u` | Undo |
| `Ctrl+r` | Redo |
| `/word` | Search forward for a word |
| `gg` | Go to first line |
| `G` | Go to last line |
| `:set number` | Show line numbers |
| `:set nonumber` | Hide line numbers |
| `gg` then `dG` | Delete from first line to end |

## 5. Users and Permissions Basics

| Command | Use |
|---|---|
| `whoami` | Show current username |
| `adduser username` | Create a user on Debian/Ubuntu |
| `passwd username` | Set or change a user's password |
| `sudo command` | Run a permitted command with elevated privileges |

**Safety:** Avoid working as `root` unless required. Never publish passwords, private keys or access tokens.

## 6. System and Operating System Information

| Command | Use |
|---|---|
| `hostname` | Show system hostname |
| `uname` | Show kernel name |
| `uname -a` | Show detailed kernel/system information |
| `man command` | Open a command's manual |
| `history` | Show shell command history |
| `clear` | Clear terminal display |

## 7. Disk Space and Networking

| Command | Use |
|---|---|
| `df` | Show filesystem disk usage |
| `df -h` | Show disk usage in human-readable units |
| `ip` | Display or manage networking information |
| `ip addr` | Show network interfaces and IP addresses |
| `ip -br addr` | Show a brief interface/IP summary |
| `ip route` | Show routing table |
| `ping hostname` | Test reachability and response time |
| `ifconfig` | Show or configure interfaces; may require net-tools |
| `sudo apt install net-tools` | Install legacy network utilities on Ubuntu/Debian |

## 8. Package Management (Ubuntu/Debian)

| Command | Use |
|---|---|
| `sudo apt update` | Refresh package lists |
| `sudo apt upgrade -y` | Upgrade installed packages; `-y` auto-confirms prompts |
| `sudo apt install package_name` | Install a package |
| `sudo apt remove package_name` | Remove a package, usually leaving system configuration |
| `sudo apt install tree` | Install the `tree` utility |
| `sudo apt install ncal` | Install the `ncal` calendar utility |
| `cal apr 2026` | Display April 2026 calendar (if `cal` is available) |
| `cal 2027` | Display the 2027 calendar (if `cal` is available) |

## 9. Git Basics

| Command | Use |
|---|---|
| `git --version` | Check Git version |
| `git init` | Initialise a repository |
| `git status` | Show working tree and staging status |
| `git add file` | Stage a specific file |
| `git add folder/` | Stage a folder's changes |
| `git add .` | Stage changes in current directory; review first |
| `git commit -m "message"` | Save staged changes in a commit |
| `git log --oneline` | Show compact commit history |
| `git branch -M main` | Rename current branch to `main` |
| `git remote -v` | Show configured remote URLs |
| `git remote add origin URL` | Add a remote repository |
| `git remote set-url origin URL` | Change the remote URL |
| `git push -u origin main` | Push branch and set upstream tracking |
| `git push` | Push later commits to the configured upstream |

### Typical Git workflow

1. `git status` — inspect changes.
2. `git add filename` — stage intended files.
3. `git status` — review staged changes.
4. `git commit -m "Describe change"` — create a snapshot.
5. `git push` — upload committed changes to GitHub.

## 10. Important Concepts

- **`>` vs `>>`:** `>` overwrites; `>>` appends.
- **`cp` vs `mv`:** `cp` copies; `mv` moves or renames.
- **`grep`:** Searches text inside files.
- **`find`:** Finds files and directories by conditions.
- **`df -h`:** Shows disk space, not RAM usage.
- **Git vs GitHub:** Git tracks history locally; GitHub hosts an online repository.
- **`git add` vs `git commit`:** `add` stages changes; `commit` saves a snapshot locally.
- **`git push`:** Sends committed changes to the remote repository.

---
## 11. Process Management

| Command | Use |
|---|---|
| `ps aux` | Display running processes with details about users and resource usage |
| `ps aux \| grep nginx` | Search process output for nginx |
| `pgrep -a nginx` | Show matching process IDs and command lines |
| `top` | Monitor processes and system resource usage in real time |
| `htop` | Interactive process monitor; may require installation |
| `sleep 300 &` | Run a 300-second sleep command in the background |

**Examples**

```bash
ps aux | grep nginx
pgrep -a nginx
sleep 300 &
```

**Note:** The `grep nginx` command can also match its own search process. `pgrep -a nginx` is often a cleaner way to search for matching processes.

## 12. System Resource Monitoring

| Command | Use |
|---|---|
| `free -h` | Display RAM and swap usage in human-readable units |
| `du -sh directory` | Display the total disk usage of a directory |
| `du -sh *` | Display disk usage for each item in the current directory |

**Examples**

```bash
free -h
du -sh /home/ubuntu
du -sh *
```

**Important:** `free -h` checks memory, `df -h` checks filesystem space, and `du -sh` checks the space used by files or directories.

## 13. File Permissions

| Command | Use |
|---|---|
| `chmod +x script.sh` | Add execute permission |
| `chmod -x script.sh` | Remove execute permission |
| `chmod 700 script.sh` | Give the owner read, write and execute permissions only |
| `chmod 754 script.sh` | Owner: full permissions; group: read and execute; others: read only |
| `chmod 755 script.sh` | Owner: full permissions; group and others: read and execute |

**Permission number reference**

| Number | Permission |
|---|---|
| `7` | Read + Write + Execute (`rwx`) |
| `6` | Read + Write (`rw-`) |
| `5` | Read + Execute (`r-x`) |
| `4` | Read only (`r--`) |

**Example**

```bash
chmod 755 script.sh
ls -l script.sh
./script.sh
```

The file needs a valid executable script and the required interpreter or runtime to run successfully.

## 14. User and Group Management

| Command | Use |
|---|---|
| `sudo useradd -m lucky` | Create user `lucky` and a home directory |
| `sudo usermod -aG devops yntp` | Add user `yntp` to the supplementary `devops` group |
| `id username` | Display a user's UID, GID and group memberships |
| `groups username` | Display the groups a user belongs to |
| `sudo passwd lucky` | Set or change the password for user `lucky` |

**Examples**

```bash
sudo useradd -m lucky
sudo passwd lucky
id lucky
groups lucky
```

**`adduser` vs `useradd`**

- `adduser` is generally an interactive helper on Ubuntu/Debian.
- `useradd` is a lower-level utility; use `-m` when you want it to create a home directory.

**Important:** The `devops` group must exist before adding a user to it. The `-aG` options append a supplementary group without replacing existing supplementary group memberships.

## 15. Additional Networking Commands

| Command | Use |
|---|---|
| `ip route` | Display the routing table and default route |
| `curl wttr.in/NOIDA` | Request weather information for Noida from wttr.in |
| `curl https://example.com` | Make an HTTP request to a website |

**Examples**

```bash
ip route
curl https://example.com
```

`curl` is commonly used to test URLs, APIs and HTTP responses.

## 16. Viewing and Counting Text

| Command | Use |
|---|---|
| `less filename` | View file content page by page |
| `head filename` | Display the first 10 lines by default |
| `head -n 5 filename` | Display the first 5 lines |
| `tail filename` | Display the last 10 lines by default |
| `tail -n 5 filename` | Display the last 5 lines |
| `tail -f logfile.log` | Follow new lines added to a log file |
| `wc filename` | Display line, word and byte counts |
| `wc -l filename` | Count lines |
| `wc -w filename` | Count words |
| `wc -c filename` | Count bytes |

**Examples**

```bash
head -n 5 employee.txt
tail -n 5 employee.txt
wc -l employee.txt
```

## 17. AWK Text Processing

| Command | Use |
|---|---|
| `awk '{print $1}' filename` | Print the first whitespace-separated field |
| `awk '{print $NF}' filename` | Print the last field |
| `awk '{print NR, $0}' filename` | Print each line with its record number |
| `awk '$5 > 40000 {print $2, $5}' employee.txt` | Print fields 2 and 5 when field 5 exceeds 40000 |
| `awk -v limit=40000 '$5 > limit {print $2, $5}' employee.txt` | Filter using an AWK variable |
| `awk -F ',' '{print $1, $2}' data.csv` | Split simple comma-separated data and print fields 1 and 2 |

**AWK reference**

- `$0` = complete line
- `$1`, `$2` = first and second fields
- `$NF` = last field
- `NR` = current record number
- `NF` = number of fields in the current record
- `-F` = specify the field separator
- `-v` = pass a variable to AWK

**Note:** The salary examples assume field 5 contains the salary. `-F ','` does not fully handle CSV quoting rules when a field contains commas inside double quotes.

## 18. Archiving and Compression

| Command | Use |
|---|---|
| `tar -cvf backup.tar directory/` | Create an uncompressed tar archive |
| `tar -xvf backup.tar` | Extract a tar archive |
| `zip -r backup.zip directory/` | Create a ZIP archive of a directory |
| `unzip backup.zip` | Extract a ZIP archive |

**Option reference**

- `c` = create archive
- `x` = extract archive
- `v` = verbose output
- `f` = specify archive filename
- `-r` = include directory contents recursively for ZIP

**Note:** `zip` and `unzip` may need to be installed separately.

