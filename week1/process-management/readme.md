## Process Monitoring:

I used the ps command to take a snapshot of all currently running processes. Then, I identified the five processes using the most memory and CPU. 
I was also able to find all processes running as the root user and counted the total number of running processes. 


## Process Control Exercise:

For this exercise, I had to start three processes in the background, practice bringing a process to the foreground, kill a process, 
and verify that the process had been terminated.


## Process Investigation:

For this exercise, I investigated the process using the SSH service, identified the process using port 22, 
and attempted to display my session in a process tree.

#### Common Commands Reference
##### Navigation
- pwd              # Where am I?
- ls -la           # What's here?
- cd folder        # Go into folder
- cd ..            # Go back one level
- cd ~             # Go home

###### Files and Folders
- mkdir folder     # Make a folder
- touch file       # Make empty file
- cp source dest   # Copy
- mv old new       # Move or rename
- rm file          # Delete file

##### Viewing Files
- cat file         # Show file content
- head -n 5 file   # Show first 5 lines
- tail -n 5 file   # Show last 5 lines

##### Permissions
- chmod 755 file   # Change permissions
- ls -l            # See permissions

##### Processes
- ps               # Your processes
- ps aux           # All processes
- kill PID         # Stop a process

##### System Info
- free -h          # Memory usage
- df -h            # Disk usage
- uptime           # How long system is running
- who              # Who's logged in
