# load WinForms assembly for SystemInformation
Add-Type -AssemblyName System.Windows.Forms

# get idle milliseconds and convert to seconds
$idleSec = [System.Windows.Forms.SystemInformation]::IdleTime / 1000

# if idle > 3 hours (10800 s), shutdown
if ($idleSec -gt 10800) {
    shutdown.exe /s /t 0
}