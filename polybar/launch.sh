
#!/bin/bash

# Kill any existing Polybar instances
killall -q polybar

# Wait until Polybar shuts down
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

# Launch bars for each monitor
polybar primary &
polybar secondary &
polybar tertiary &

