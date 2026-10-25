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

## Future Additions

Add newly learned commands and important variants below this line. Avoid duplicating entries already documented above.Linux is important for DevOps
AWS uses Linux servers
I am learning Linux commands
