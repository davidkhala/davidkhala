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
set -e -x

_clone() {
	local GOPATH=$(go env GOPATH)
	local reposURL=$1
	local orgName=$2
	local projectName=$3
	local branch=$4
	local orgPath=${GOPATH}/src/github.com/${orgName}
	mkdir -p "${orgPath}"
	cd "${orgPath}"
	if [[ ! -d ${orgPath}/${projectName} ]]; then
		git clone "$reposURL"
	fi
	cd "${orgPath}/${projectName}"
	git pull
	if [[ -n $branch ]]; then
		git checkout $branch
	fi
	echo "${orgPath}/${projectName}"
}

get() {
	# support github and linux/unix only
	local reposURL=$1
	local branch=$2
	local orgName
	local projectName

	if [[ ${reposURL} == github* ]]; then
		get "https://${reposURL}.git" $branch
	elif [[ ${reposURL} == https://* ]]; then
		orgName=$(echo ${reposURL} | cut -d '/' -f 4)
		projectName=$(echo ${reposURL} | cut -d '/' -f 5 | cut -d '.' -f 1)
		_clone $reposURL $orgName $projectName $branch
	elif [[ ${reposURL} == git@* ]]; then
		echo ...using SSH
		orgName=$(echo ${reposURL} | cut -d '/' -f 1 | cut -d ':' -f 2)
		projectName=$(echo ${reposURL} | cut -d '/' -f 2 | cut -d '.' -f 1)

		_clone $reposURL $orgName $projectName $branch
	else
		exit 1
	fi
}
$@



