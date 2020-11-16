if ($args[0] -match "lock") {
    Start-Sleep -Seconds $args[1] 
    rundll32.exe user32.dll, LockWorkStationlok
}
elseif ($args -match "shutdown") {
    shutdown /s /t $args[1] 
}
else {
    echo "wrong arguments"
}
