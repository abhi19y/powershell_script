cmdkey.exe /add:<ip> /user:<ip>\<user> /pass:<password> 

stop-service -inputobject $(get-service -ComputerName <ip> -Name <service_name>)
Remove-Item \\<ip>\C:\<path>

copy <source of file to be deployed> \\<ip>\c$\<path to destination>
start-service -inputobject $(get-service -ComputerName <ip or name of computer> -Name <service_name>)
