# Open a new terminal window if none exists; otherwise focus on existing one
HOSTNAME=`hostname`
TERMINAL_WINS=`wmctrl -l | grep "$HOSTNAME Terminal" | awk '{print $1}'`
if [ -z $TERMINAL_WINS ]; then
    gnome-terminal --window
else
    wmctrl -a `echo "$TERMINAL_WINS" | head -1` -i
fi
