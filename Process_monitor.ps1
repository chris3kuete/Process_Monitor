# Ask the user for the process namne
$ProcessName = Read-Host "Enter the name of your application" 

# Try to get the process
$processObject = Get-Process $ProcessName

# Check if the process is running and responding
if ($processObject -eq $null){
    Write-Host "$processName is not currently running"
}elseif ($processObject.Responding) {
    Write-Host "$processName is working correctly"
    <# Action when this condition is true #>
}else{
    Write-Host "$processName is unresponsive, closing..."
    $processObject.Kill()
}