//kill process on specific port -- Windows commands

netstat -ano | find "8081"
taskkill /F /PID PID
