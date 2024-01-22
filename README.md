# Starter Kit Application

This is a starter Rails application with everything you need to properly bootstrap a useful Rails application. This is a fully self-contained application with backend stack.

## Prerequisites

You need to have the following installed before you can run this application:

- Refer to the `.tool-versions` file for current Ruby / NodeJS versions.
- [Docker for Mac](https://docs.docker.com/docker-for-mac/)

[asdf](https://github.com/asdf-vm/asdf) is the recommended version manager for Ruby.

<details>
 <summary>Installing pg gem on macOS</summary>

If you're trying to install the postgresql gem `pg` and it is failing with the following error message:

```
Installing pg 1.2.3 with native extensions
Gem::Ext::BuildError: ERROR: Failed to build gem native extension.

    current directory: ~/.rbenv/versions/3.0.0/lib/ruby/gems/3.0.0/gems/pg-1.2.3/ext
~/.rbenv/versions/3.0.0/bin/ruby -I ~/.rbenv/versions/3.0.0/lib/ruby/3.0.0 -r ./siteconf20210125-97201-pycpo.rb extconf.rb
checking for pg_config... no
No pg_config... trying anyway. If building fails, please try again with
 --with-pg-config=/path/to/pg_config
checking for libpq-fe.h... no
Can't find the 'libpq-fe.h header
```

The following helped me resolve the issue without having to install the entire postgresql as recommended in the stop Stack Overflow post (already using it in a Docker container):

```
brew install libpq
gem install pg -- --with-pg-config=/usr/local/opt/libpq/bin/pg_config
```
</details>

### Backend

Backend services defined in the `docker-compose.yml` are:

- Postgres `15.3`
- Redis `7.2`
- Memcached `1.6`

### Docker scripts

The backed services are configured in the `docker-compose.yml` file. These services are controlled via some convenience scripts in `./bin/docker`:

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
- Seed the database:
```
rake development:truncate_and_seed
```
- Start the app:
```
foreman start
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
rspec
```
- You can also run guard for TDD-style testing:
```
guard
```

### Sample data

- There are 3 sample data files provided for general use / experimentation:

- `data/credit-cards.json` -> Sample JSON credit card data created at [generatedata.com](https://www.generatedata.com)
- `data/moviedata.json` -> Sample JSON data file from the [AWS DynamoDB tutorial](https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/GettingStarted.Ruby.02.html#GettingStarted.Ruby.02.01)
- `data/people.csv` -> Sample CSV data file from the [ConvertCSV](https://www.convertcsv.com/generate-test-data.htm)

## License

This starter kit is released under the [MIT License](https://opensource.org/licenses/MIT).
