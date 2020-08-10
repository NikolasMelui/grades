i:
	npm i
install:
	npm i
gulp_start:
	cross-env NODE_ENV=development gulp
react_start:
	cross-env NODE_ENV=development webpack-dev-server --mode=development --hot --inline --host localhost --port 8080
gulp-build-development:
	cross-env NODE_ENV=development gulp build
react-build-development:
	cross-env NODE_ENV=development webpack --mode=development
build-development:
	npm run gulp-build:development && npm run react-build:development
gulp-build-production:
	cross-env NODE_ENV=production gulp build
react-build-production:
	cross-env NODE_ENV=production webpack --mode=production
build-production:
	npm run gulp-build:production && npm run react-build:production
eslint:
	./node_modules/.bin/eslint ./src/react/ --ext js,jsx --max-warnings=0
eslint-test:
	./node_modules/.bin/eslint ./src/react/ --max-warnings=0
eslint-fix:
	./node_modules/.bin/eslint ./src/react/ --ext js,jsx --fix
eslint-prettier:
	./node_modules/.bin/prettier ./src/react/ --write
