topics = {"Check for errors",
    "Backup",
    "Upgrading the system",
    "Use the package manager to install software",
    "Clean the filesystem",
    "Tips and tricks"}

checkForErros = {[['Failed systemd services
     Check if any systemd services have entered in a failed state:
     $ systemctl --failed
     For more info: https://wiki.archlinux.org/index.php/Systemd#Analyzing_the_system_state']];
    
    [['Logfiles 
    Look for errors in the log files located at /var/log, as well as high priority errors in the systemd journal:
    # journalctl -p 3 -xb']]
    }
    

print('\n\n')

if arg[1] == 'list' then
    for k,v in pairs(topics) do print(k, v) end
else
    print('Ooops')
end

print('\nType the topic number: ')
num = io.read()
print('\n')

if num == '1' then
    fTopics = {"Failed systemd services",
	"Logfiles"}

    for k,v in pairs(fTopics) do print(k, v) end
    
    print('Type the topic number: ')
    num = io.read()

    if num == '1' then
	print(checkForErros[1])
    elseif num == '2' then
	print(checkForErros[2])
    end

elseif num =='2' then
    fTopics = {"Configuration files",
	"List of installed packages",
	"Pacman database",
	"LUKS headers"}
end
