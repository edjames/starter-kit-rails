# Skeleton Application

This is a starter Rails application with everything you need to properly bootstrap a useful Rails application. This is a fully self-contained application with backend stack.

## Prerequisites

You need to have the following installed before you can run this application:

- [Docker for Mac](https://docs.docker.com/docker-for-mac/)
- Ruby 2.6.1
- Node 10.15.1

[asdf](https://github.com/asdf-vm/asdf) is the recommended version manager for Ruby and Node.

### Backend / Docker scripts

The backed services are configured in the `docker-compose.yml` file. These services are controlled via some convenience scripts in `./bin/docker`

- `./bin/up` -> Install docker images and start the services.
- `./bin/stop` -> Stop all the services.
- `./bin/watch` -> Monitor all services in real-time.
- `./bin/teardown` -> Remove all docker containers and images.

### Setup

- Start all the docker services.
- Run the provided setup script:
```
./bin/setup
```

### Configuration

- You can override environment settings in the `.env` file.

### Run the application

- Start the application:
```
foreman start
```
- Navigate to [http://localhost:3000](http://localhost:3000)
- Login using the default user credentials:
  - Email: `jim@example.com`
  - Password: `Changeme1!`

### Resetting data

- Run the provided rake task to prepare a clean dataset:
```
rake development:truncate_and_seed
```

### Running tests

- To run the test suite simply run:
```
rails test
```
- You can also run guard for TDD-style testing:
```
guard
```
