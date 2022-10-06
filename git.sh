push-tag(){
  local tag_name = $1
  git push origin $tag_name
}
delete-tag(){
  local tag_name = $1
  git push --delete origin $tag_name
}
setup(){
  git config --global user.name "David Liu"
  git config --global user.email "david-khala@hotmail.com"
  git config --global pull.rebase true
}
$@



