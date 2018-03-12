#!/bin/sh
for file in $HOME/.local/share/applications/*desktop
do
 echo "NoDisplay=true" >> $file
done

