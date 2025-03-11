# quickbackup

## What This Command Does
**quickbackup** is a shell script that automates the creation of a compressed backup (tar.gz) for any directory you specify. It generates a backup archive named with the directory’s basename and the current timestamp, and stores the backup in a designated backup folder (default: $HOME/quickbackups).

## Why/When This Command Is Useful
- **Quick Archiving:** Ideal for quickly archiving project directories before making major changes.
- **Automation:** Helps ensure you always have a backup copy without manually typing long commands.
- **General Use:** Works with any directory and requires no hard-coded paths or settings.

## How to Use This Command
1. Make sure the script is executable.
2. Run the command with a directory as an argument or let it prompt you:
   - To backup a specific directory:
     ```
     ./quickbackup /path/to/your/project
     ```
   - Without an argument, the script will prompt:
     ```
     $ ./quickbackup
     Enter the directory to backup: /path/to/your/project
     ```
3. The backup file will be created in $HOME/quickbackups with a name like:
   ```
   projectname-2025-03-12-15:30:00.tar.gz
   ```
## Examples

**Example 1: Running quickbackup**
```
soham_bhowmick@instance-20250129-174555:~/cs131/a2$ ./quickbackup
Enter the directory to backup: /home/soham_bhowmick/cs131/ws4
Backup successful!
Backup file created at: /home/soham_bhowmick/quickbackups/ws4-2025-03-11-19-50-29.tar.gz
```
Verifying the results:
```
soham_bhowmick@instance-20250129-174555:~/quickbackups$ tar -tzf ws4-2025-03-11-19-50-29.tar.gz
ws4/
ws4/2025-03-10-02:19:53-2.0.csv
ws4/cmds.log
ws4/2025-03-10-02:20:50-1.0.csv
ws4/ws4.txt
ws4/2025-03-10-02:19:53-1.0.csv
ws4/2025-03-10-02:20:50-2.0.csv
ws4/2019-01-h1.csv
ws4/reorg.sh
ws4/2025-03-10-02:20:50-4.0.csv
ws4/.gitignore
ws4/2025-03-10-02:19:53-4.0.csv
```
