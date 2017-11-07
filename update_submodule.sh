update_submodules() {
  git submodule update --remote --merge
  git add .
  git commit -m 'Submodule sync'
  echo "Submodules updated and committed. Run 'git push origin' if you want."
}

while true; do
  read -p "You are about to commit all updates to this repo's git submodules. Are you sure you want to proceed? (y/n)" yn
  case $yn in
    [Yy]* ) update_submodules; break;;
    [Nn]* ) exit;;
    * ) echo "Please answer yes or no (y/n).";;
  esac
done
