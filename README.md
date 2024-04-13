# CRUD-Sinatra
 Create Read Update Delete functions in Sinatra Ruby.

### Instructions

Instructions for a simple Sinatra web app with database support.

1. Create `Gemfile` and install dependencies

```ruby
source 'https://rubygems.org'

gem 'sinatra'                                       
gem 'activerecord', require: 'active_record'                                       # ORM to talk to database
gem 'sinatra-activerecord', require: 'sinatra/activerecord'                        # AR work on Sinatra
gem 'sqlite3'                                                                      # Database adapter
gem 'rake'                                                                         # Task runner
gem 'thin'                                                                         # Thin and fast web server
```

```bash
bundle install
```

2. Create `Rakefile`. Rake is a task runner. For more info: [RubyGuides.com](https://www.rubyguides.com/2019/02/ruby-rake/)

```ruby
require 'sinatra/activerecord/rake'
require './app'
```

3. Create `app.rb`

```ruby
require 'sinatra'
require 'sinatra/activerecord'

set :database, { adapter: 'sqlite3', database: 'tweets.db' }

get '/' do
    "Hello world!"
end
```

3. Run `app.rb` in the console:

```bash
bundle exec ruby app.rb
```