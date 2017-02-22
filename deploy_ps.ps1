cmdkey.exe /add:<IP> /user:<IP>\<USER> /pass:<PASSWORD>  

stop-service -inputobject $(get-service -ComputerName <IP OR COMPUTERNAME> -Name Tomcat8)

If((Test-Path C:\) -eq $True) {
    Invoke-Command -ComputerName <IP OR COMPUTERNAME> -ScriptBlock { 
               
        Remove-Item -Path <PATH>\* }
    
} else {
    Write-Host "Folder isn't exist, please input correct path"}
copy <PATH TO WAR FILE> \\<IP>\c$\
start-service -inputobject $(get-service -ComputerName <IP OR COMPUTERNAME> -Name Tomcat8)
