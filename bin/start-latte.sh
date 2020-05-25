#!/bin/bash

ps cax | grep latte-dock > /dev/null
if [ $? -eq 0  ]; then
      echo "Warning: latte-dock is already running.  Killing existing process."
      pkill latte-dock
  else
      latte-dock &
      i3-msg "gaps bottom current toggle 0"
      tail --pid $! -f /dev/null
      i3-msg "gaps bottom current toggle 0"
fi
