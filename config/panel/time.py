#!/usr/bin/env python3
import datetime

now = datetime.datetime.now()

time_str = now.strftime("%a, %d %b  %I:%M %p")

print(f"<txt><span fgcolor='#c678dd'>{time_str}</span></txt>")