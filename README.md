# Project 2: Basic Script for Ping Testing (Batch File)

## Description
This project provides a batch file script designed to automate network troubleshooting by testing the connectivity to multiple servers or devices. The script uses the `ping` command to check if the specified IP addresses or domain names are reachable from the local machine. This tool is useful for IT support and network administrators to quickly assess network health and diagnose connectivity issues.

## Purpose
The script serves as an automation tool for network testing, allowing you to:
- Ping multiple servers or devices with a single command.
- Quickly identify network connectivity issues by observing the results from several pings.
- Automate repetitive tasks such as verifying the reachability of DNS servers, web servers, or other devices on the network.
- Gather essential data for troubleshooting network configurations and issues.

By running the script, you can easily check if a server or device is online and identify potential problems like packet loss or high latency. This is particularly helpful for diagnosing network outages, verifying DNS configurations, and ensuring that critical infrastructure is accessible.

---

## Steps to Use
1. **Download the Batch File**:
   - Clone or download the repository containing the batch file `ping_test.bat`.
   
2. **Edit the IPs or Domain Names**:
   - Open the batch file (`ping_test.bat`) in any text editor (such as Notepad).
   - Locate the `set ipList=...` line in the script.
   - Modify the list of IPs or domain names to match the devices or servers you want to test. For example:
     ```batch
     set ipList=8.8.8.8 1.1.1.1 www.google.com
     ```
   - You can add more IPs or domains to the list separated by spaces.

3. **Run the Script**:
   - After editing the batch file, save it.
   - Open a Command Prompt window (press `Win + R`, type `cmd`, and hit Enter).
   - Navigate to the directory where the batch file is saved using the `cd` command, for example:
     ```cmd
     cd C:\path\to\batch\file
     ```
   - Execute the script by typing:
     ```cmd
     ping_test.bat
     ```
   - The script will then begin pinging each address in the list and display the results in the Command Prompt window.

4. **Review the Results**:
   - The script will show the results for each ping, indicating if the server or device is reachable and if there is any packet loss or delay.
   - After testing all addresses, it will display the message `Network test complete.` and pause so you can review the output.

---

## Script:
The batch file script that tests network connectivity:

```batch
@echo off
echo Checking network connectivity...

:: List of IPs and domains to test
set ipList=8.8.8.8 1.1.1.1 www.google.com

:: Loop through each address in the list and ping it
for %%i in (%ipList%) do (
    echo Pinging %%i...
    ping -n 4 %%i
    echo.
)

echo Network test complete.
pause
