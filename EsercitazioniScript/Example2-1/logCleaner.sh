# Cleanup
# Run as root, of course.
 
cd /var/log
# Ci indirizza nella directory /var/log
cat /dev/null > messages
# Il contenuto del file messages viene sostituito con il vuoto (buco nero)
cat /dev/null > wtmp 
# Anche qui viene eseguita la stessa cosa
echo "Log files cleaned up." 
#Semplice stama a video del messaggio tra virgolette

