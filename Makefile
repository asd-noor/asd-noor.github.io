TAG :=

deploy:
	test -n "$(TAG)" || (echo "TAG is required, e.g. make deploy TAG=v1.2.3" && exit 1)
	git add .
	git commit -m "$(TAG)"
	git tag "$(TAG)"
	git push -u origin master
	git push --tags

