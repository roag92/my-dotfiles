function remove-local-branches
	git fetch -p; git branch -vv | awk '/: gone]/{print $1}';
end
