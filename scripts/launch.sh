killall -q polybar

echo "---" | tee -a /tmp/polybarL.log /tmp/polybarR.log
polybar left >>/tmp/polybarL.log 2>&1 &
polybar right >>/tmp/polybarR.log 2>&1 &

echo "Bars launched..."
