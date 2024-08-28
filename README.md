# Graded assignment on Automated Testing and Linux and Shell Scripting

Objective: This assignment is designed to test proficiency in writing and understanding Bash scripts.

## 1. Create a Directory Structure:

Write a script that creates the following directory structure:

   /home/user/

       ├── projects/

       │   ├── project1/

       │   ├── project2/

       │   └── project3/

       ├── documents/

       └── downloads/
## [Solution](create_directory_structure.sh)

### To Execute Script:

Make the script executable by running: 
~~~
chmod +x create_directory_structure.sh
~~~
Run the script: 
~~~
./create_directory_structure.sh
~~~

Directory structure will be created under /home/user/ .



## 2. File Backup:

Write a script that takes a directory as an argument and creates a backup of all `.txt` files in that directory. The backup files should be copied to a new directory named `backup` with a timestamp.

## [Solution](file_backup.sh)

### To Execute Script:

Make the script executable by running: 
~~~
chmod +x file_backup.sh
~~~
Run the script: 
~~~
./create_directory_structure.sh /path/to/directory
~~~



## 3. User Information:

Write a script that displays the following information about the user:

   - Username

   - User ID

   - Group ID

   - Home Directory

   - Shell being used
     
## [Solution](user_info.sh)

### To Execute Script:

Make the script executable by running: 
~~~
chmod +x user_info.sh
~~~
Run the script: 
~~~
./user_info.sh
~~~



## 4. Disk Usage Alert:

Write a script that checks the disk usage of the root filesystem. If the disk usage is above 80%, the script should send an email alert to the system administrator.

## [Solution](disk_usage_alert.sh)

### To Execute Script:

Make the script executable by running: 
~~~
chmod +x disk_usage_alert.sh
~~~
Run the script: 
~~~
./disk_usage_alert.sh
~~~


## 5. File Permission Checker:

Write a script that takes a file as an argument and checks if the file has read, write, and execute permissions. The script should display appropriate messages for each permission.

## [Solution](file_permission_check.sh)

### To Execute Script:
Make the script executable by running: 
~~~
chmod +x file_permission_check.sh
~~~
Run the script: 
~~~
./file_permission_check.sh
~~~


## 6. Automated Backup:

Write a script that compresses the `/home/user/documents` directory into a tarball named `documents_backup.tar.gz` and moves it to the `/home/user/backup` directory. This script should be scheduled to run daily using cron.

## [Solution](automated_backup.sh)

### To Execute Script:
Make the script executable by running: 
~~~
chmod +x automated_backup.sh
~~~
Run the script: 
~~~
./automated_backup.sh
~~~

### Cron Job Setup:

To schedule this script to run daily, follow these steps:

1. Open the crontab file for editing:
~~~
crontab -e
~~~

2. Add the following line to run the script every day at midnight:
~~~
0 0 * * * /path/to/automated_backup.sh
~~~


## 7. Process Monitor:

Write a script that checks if a specific process (e.g., `apache2`) is running. If the process is not running, the script should start the process and log the action to a file.

## [Solution](process_monitor.sh)

### To Execute Script:
Make the script executable by running: 
~~~
chmod +x process_monitor.sh
~~~
Run the script: 
~~~
./process_monitor.sh
~~~


## 8. Text File Analysis:

Write a script that takes a text file as an argument and counts the number of lines, words, and characters in the file. The script should display the counts.

## [Solution](text_file_analysis.sh)

### To Execute Script:
Make the script executable by running: 
~~~
chmod +x text_file_analysis.sh
~~~
Run the script: 
~~~
./text_file_analysis.sh /path/of/text/file.txt
~~~


## 9. System Information Report:

Write a script that generates a system information report. The report should include:

   - System uptime

   - Memory usage

   - CPU load

   - Disk usage

   - Running processes

The report should be saved to a file named `system_report.txt`.

## [Solution](system_information_report.sh)

### To Execute Script:
Make the script executable by running: 
~~~
chmod +x system_information_report.sh
~~~
Run the script: 
~~~
./system_information_report.sh
~~~


## 10. Simple Calculator:

Write a script that acts as a simple calculator. The script should prompt the user to enter two numbers and an operator (+, -, *, /) and then display the result of the operation.

## [Solution](simple_calculator.sh)

### To Execute Script:
Make the script executable by running: 
~~~
chmod +x simple_calculator.sh
~~~
Run the script: 
~~~
./simple_calculator.sh
