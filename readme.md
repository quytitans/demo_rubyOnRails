1. cài đặt ruby. Có thể gặp vấn đề về network

2. cài đặt rail

3. cài đặt mysql2

sẽ gặp vấn đề: thiếu thư viên msys2, download tại đây https://www.msys2.org/

vì đã sử dụng mysql của xampp, cho nên phải chạy câu lệnh sau: gem install mysql2 -- --with-mysql-dir=C:\xampp\mysql

`gem install mysql2 -- --with-mysql-dir=C:\xampp\mysql` sẽ tiếp tục lỗi do thiếu 2 thư mục: lib, include

trong file config/database.yml

thêm

development:
adapter: mysql2
encoding: utf8
database: test
username: root
password:
host: 127.0.0.1
port: 3306

comment dongf

#development:
#  <<: *default
#  database: db/development.sqlite3

trong Gemfile thêm dòng gem 'mysql2'

rails about                              # List versions of all Rails frame...
rails action_mailbox:ingress:exim        # Relay an inbound email from Exim...
rails action_mailbox:ingress:postfix     # Relay an inbound email from Post...
rails action_mailbox:ingress:qmail       # Relay an inbound email from Qmai...
rails action_mailbox:install             # Installs Action Mailbox and its ...
rails action_mailbox:install:migrations  # Copy migrations from action_mail...
rails action_text:install                # Copy over the migration, stylesh...
rails action_text:install:migrations     # Copy migrations from action_text...
rails active_storage:install             # Copy over the migration needed t...
rails app:template                       # Applies the template supplied by...
rails app:update                         # Update configs and some other in...
rails assets:clean[keep]                 # Remove old compiled assets
rails assets:clobber                     # Remove compiled assets
rails assets:environment                 # Load asset compile environment
rails assets:precompile                  # Compile all the assets named in ...
rails cache_digests:dependencies         # Lookup first-level dependencies ...
rails cache_digests:nested_dependencies  # Lookup nested dependencies for T...
rails db:create                          # Creates the database from DATABA...
rails db:drop                            # Drops the database from DATABASE...
rails db:environment:set                 # Set the environment value for th...
rails db:fixtures:load                   # Loads fixtures into the current ...
rails db:migrate                         # Migrate the database (options: V...
rails db:migrate:down                    # Runs the "down" for a given migr...
rails db:migrate:redo                    # Rolls back the database one migr...
rails db:migrate:status                  # Display status of migrations
rails db:migrate:up                      # Runs the "up" for a given migrat...
rails db:prepare                         # Runs setup if database does not ...
rails db:reset                           # Drops and recreates the database...
rails db:rollback                        # Rolls the schema back to the pre...
rails db:schema:cache:clear              # Clears a db/schema_cache.yml file
rails db:schema:cache:dump               # Creates a db/schema_cache.yml file
rails db:schema:dump                     # Creates a database schema file (...
rails db:schema:load                     # Loads a database schema file (ei...
rails db:seed                            # Loads the seed data from db/seed...
rails db:seed:replant                    # Truncates tables of each databas...
rails db:setup                           # Creates the database, loads the ...
rails db:structure:dump                  # Dumps the database structure to ...
rails db:structure:load                  # Recreates the databases from the...
rails db:version                         # Retrieves the current schema ver...
rails log:clear                          # Truncates all/specified *.log fi...
rails middleware                         # Prints out your Rack middleware ...
rails restart                            # Restart app by touching tmp/rest...
rails secret                             # Generate a cryptographically sec...
rails stats                              # Report code statistics (KLOCs, e...
rails test                               # Runs all tests in test folder ex...
rails test:all                           # Runs all tests, including system...
rails test:db                            # Run tests quickly, but also rese...
rails test:system                        # Run system tests only
rails time:zones[country_or_offset]      # List all time zones, list by two...
rails tmp:clear                          # Clear cache, socket and screensh...
rails tmp:create                         # Creates tmp directories for cach...
rails webpacker                          # Lists all available tasks in Web...
rails webpacker:binstubs                 # Installs Webpacker binstubs in t...
rails webpacker:check_binstubs           # Verifies that webpack & webpack-...
rails webpacker:check_node               # Verifies if Node.js is installed
rails webpacker:check_yarn               # Verifies if Yarn is installed
rails webpacker:clean[keep,age]          # Remove old compiled webpacks
rails webpacker:clobber                  # Remove the webpack compiled outp...
rails webpacker:compile                  # Compile JavaScript packs using w...
rails webpacker:info                     # Provide information on Webpacker...
rails webpacker:install                  # Install Webpacker in this applic...
rails webpacker:install:angular          # Install everything needed for An...
rails webpacker:install:coffee           # Install everything needed for Co...
rails webpacker:install:elm              # Install everything needed for Elm
rails webpacker:install:erb              # Install everything needed for Erb
rails webpacker:install:react            # Install everything needed for React
rails webpacker:install:stimulus         # Install everything needed for St...
rails webpacker:install:svelte           # Install everything needed for Sv...
rails webpacker:install:typescript       # Install everything needed for Ty...
rails webpacker:install:vue              # Install everything needed for Vue
rails webpacker:verify_install           # Verifies if Webpacker is installed
rails webpacker:yarn_install             # Support for older Rails versions
rails yarn:install                       # Install all JavaScript dependenc...
rails zeitwerk:check                     # Checks project structure for Zei...
