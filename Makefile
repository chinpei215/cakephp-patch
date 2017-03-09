.PHONY: test
test:
	cd cakephp && vendor/bin/phpunit

.PHONY: clean
clean:
	rm -rf cakephp

.PHONY: 3.3
3.3:
	git clone -b 3.3.15 --depth 1 --single-branch https://github.com/cakephp/cakephp
	patch -d cakephp -p1 < 3.3/10353.patch
	composer install -d cakephp

.PHONY: 3.2
3.2:
	git clone -b 3.2.14 --depth 1 --single-branch https://github.com/cakephp/cakephp
	patch -d cakephp -p1 < 3.2/10353.patch
	composer require -d cakephp "phpunit/phpunit:5.5.*"

.PHONY: 3.1
3.1:
	git clone -b 3.1.14 --depth 1 --single-branch https://github.com/cakephp/cakephp
	patch -d cakephp -p1 < 3.1/10353.patch
	composer require -d cakephp "phpunit/phpunit:4.8.*"

.PHONY: 3.0
3.0:
	git clone -b 3.0.19 --depth 1 --single-branch https://github.com/cakephp/cakephp
	patch -d cakephp -p1 < 3.0/10353.patch
	composer require -d cakephp "phpunit/phpunit:4.8.*"
