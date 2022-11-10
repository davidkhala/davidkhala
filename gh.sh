login() {
  # This is interactive
  gh auth login
}
rename-codespace() {
  gh codespace edit --codespace=$1 --display-name=$2

}
os-codespace() {
  curl https://raw.githubusercontent.com/davidkhala/linux-utils/main/system.sh | bash -s get_distribution
}
$1
