

#!/bin/bash

case $1 in
  "pull")
    gitCommand="pull"
    ;;
  "push")
    gitCommand="push"
    ;;
  *)
    gitCommand="status -s"
    ;;
esac

subfolders=$(find . -type d)
echo "----------------------------"
# Loop through each subdirectory
for folder in $subfolders; do
  if [ -d "$folder/.git" ]; then
    cd "$folder"
    echo "$folder:"
    git $gitCommand
    cd ..
    echo "----------------------------"
  fi
done

