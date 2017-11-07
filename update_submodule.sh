update_submodules() {
  git submodule update --remote --merge
  git add .
  git commit -m 'Submodule sync'
}

echo "You are about to update all content in this repo's Git submodules. Are you sure you want to proceed?" $1

select yn in "Yes" "No"; do
  case $yn in
    Yes ) update_submodules; break;;
    No ) exit;;
  esac
done

# if [ "$1" = "y" ]; then
#   git submodule update --remote --merge
#   git add .
#   git commit -m 'Submodule sync'
# else
#   exit
# fi
