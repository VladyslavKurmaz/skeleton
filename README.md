# README

* Rails 7.0.2
* Ruby 3.1.2
* Dev Dockerfile and Docker Compose configuration
* PostgreSQL
* Tailwind
* Flowbite

## Requirements 
Make sure you have Docker and Nodejs 14 or higher installed.

## Initial dev setup and check local env
```
cp .env.example .env
yarn dev:build
yarn db:setup
yarn test:cypress:headless
```

## Running the Rails app with Tailwind and Yarn in "watch" mode
```
yarn dev:start
```

## Running the Rails console
```
yarn dev:console
```

## Running DB migrations
```
yarn db:migrate
```

## Running Yarn install
```
yarn dev:yarn:install
```

## Running Rubocop check
```
yarn dev:lint
```

## Running Rspec unit tests
```
yarn test:unit
```
## Running Cypress Tests (E2E)
Before running E2E tests, the application should be running in the test container
```
yarn dev:up
```
Run Cypress tests in interactive mode
```
yarn test:cypress:interactive
```
Run Cypress tests in headless mode
```
yarn test:cypress:headless
```

## Debugging
Attach your terminal to the container:
```
yarn dev:debug
```

To start Ngrok local HTTP tunnel
```
yarn dev:ngrok 
```

## Deploy
Check capistrano deploy config for staging
```
yarn deploy:check:staging
```

Deploying **main** branch to staging server
```
yarn deploy:staging
```

Rollback staging deploy
```
yarn deploy:staging:rollback
```

## General info
To run Tailwind in "watch" mode with separate command, to changes are automatically reflected in the generated CSS output.
```
yarn dev:tailwindcss:watch
```

To run esbuild in "watch" mode with separate command
```
yarn dev:esbuild:watch
```

List of all available development commands
```
yarn dev:build
yarn dev:up
yarn dev:start
yarn dev:stop
yarn dev:restart

yarn db:seed
yarn db:drop
yarn db:migrate
yarn db:migrate:status
yarn db:create
yarn db:reset
yarn db:setup

yarn test:migrate
yarn test:unit
yarn test:cypress:interactive
yarn test:cypress:headless

yarn dev:console
yarn dev:tailwindcss:watch
yarn dev:esbuild:watch
yarn dev:containers:list
yarn dev:debug
yarn dev:lint
yarn dev:lint:autocorrect
yarn dev:ngrok
yarn dev:yarn:install

yarn deploy:check:staging
yarn deploy:staging
```

## Setting up Cypress Tests
Ruby and Nodejs should be installed on the local machine to run the tests. You can use any method convenient for you to install. We recommend using asdf tool version manager. https://asdf-vm.com/guide/getting-started.html 

After installation asdf, you need to run a few commands:

```
asdf plugin add ruby https://github.com/asdf-vm/asdf-ruby.git
asdf plugin add nodejs https://github.com/asdf-vm/asdf-nodejs.git
asdf install
```

Also, to run the tests, cypress must be installed
```
yarn cypress install
```

You may also need to run bundler and migrations for the test environment
```
bundle install
yarn test:migrate
```
