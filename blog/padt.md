# PADT

## PowerShell App Deploy Toolkit (PSADT) Examples

The PowerShell App Deploy Toolkit (PSADT) is a powerful tool for managing application deployments. Below are examples demonstrating how to utilize PSADT for common deployment scenarios.

### Example 1: Installing an MSI Package

To install an MSI package using PSADT, use the `Execute-MSI` function:

```shell
Execute-MSI -Action Install -Path 'example.msi'
```

### Example 2: Displaying a Message Box

To display a message box during deployment, use the `Show-InstallationPrompt` function:

```shell
Show-InstallationPrompt -Message 'This installation will update your software.' -ButtonRightText 'Continue'
```

### Example 3: Logging Deployment Activity

PSADT can log deployment activities. Use the `Write-Log` function to add custom log entries:

```shell
Write-Log -Message 'Starting software installation.' -Source 'Deploy-Application'
```

### Example 4: Checking for Running Processes

Before deploying, you might need to verify if certain processes are running. Use `Get-RunningProcesses`:

```shell
$runningProcesses = Get-RunningProcesses -ProcessName 'notepad'
If ($runningProcesses) {
    Stop-Process -Name 'notepad' -Force
}
```

### Example 5: Removing a Scheduled Task

PSADT can uninstall scheduled tasks. Use `Uninstall-ScheduledTask` to remove a task:

```shell
Uninstall-ScheduledTask -TaskName 'Example Task'
```

These examples illustrate how PSADT can streamline and automate application management tasks efficiently. For comprehensive documentation and advanced scenarios, refer to the [official documentation](https://psappdeploytoolkit.com/documentation/).
