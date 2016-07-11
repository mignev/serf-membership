help:
	@echo "   install      to install SerfMembership"
	@echo "   uninstall    to uninstall SerfMembership"
	@echo "   clean        to clean build files"
	@echo "   deploy       to deploy new version on github and pypi"

install:
	@echo "Installing"
	@python setup.py install --record installed_files.txt

uninstall: clean
	@cat installed_files.txt | xargs sudo rm -rf
	@sudo rm installed_files.txt

clean:
	@sudo rm -rf SerfMembership.egg*
	@sudo rm -rf dist
	@sudo rm -rf build
	@find . -name *.pyc -type f -exec rm {} \;

deploy:
	@git push
	@python setup.py sdist upload
