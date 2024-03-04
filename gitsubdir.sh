

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
# Loop through each subdirectory
for folder in $subfolders; do
  if [ -d "$folder/.git" ]; then
    cd "$folder"
    echo -e "\e[34m-------$folder----------------------------------------\e[0m"
    echo "$folder:"
    git fetch -q
    git log HEAD..origin/HEAD --oneline
    git $gitCommand
    cd ..
    
  fi
done

