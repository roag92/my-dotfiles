function rlb
	git fetch -p; git branch -vv | awk '/: gone]/{print $1}';
end
