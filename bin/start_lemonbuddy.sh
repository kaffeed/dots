#!/usr/bin/zsh
bspc config top_padding 34
bspc config bottom_padding 27


#declare -a lemonbuddy_bars=("top")

declare -a lemonbuddy_bars=("top" "bottom")

if command -v lemonbuddy >/dev/null && [[ "${#lemonbuddy_bars[@]}" -gt 0 ]]; then
	{ pgrep -f lemonbuddy_wrapper | awk '{print $1}' | xargs kill -9
        	killall -9 -q lemonbuddy lemonbar xdrawrect
        } &>/dev/null

	for bar in "${lemonbuddy_bars[@]}"; do
	 	monitor="$(lemonbuddy "$bar" --dump=monitor)"
		if ! xrandr | grep "^$monitor connected" &>/dev/null; then
	        	continue
		fi
		lemonbuddy_wrapper "$bar" &
		xdo above -t $(xdo id -n root) $(xdo id -n lemonbar)
	done
fi
