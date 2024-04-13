# CRUD-Sinatra
 Create Read Update Delete functions in Sinatra Ruby.

## Instructions

Instructions for a simple Sinatra web app with database support.

### Initial Setup

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

4. Point your web browser to `localhost:4567` and you should see your app running.

### Database

To create the first migration of the database, we must first have a model for our first resource. 

1. Update `app.rb`

```ruby
require 'sinatra'
require 'sinatra/activerecord'

set :database, { adapter: 'sqlite3', database: 'tweets.db' }

# Tweet Model
class Tweet < ActiveRecord::Base
    # Models are used to define the structure and behavior of db tables
    # Define associations, validations, and other model logic here
end

get '/' do
    "Hello world!"
end
```

2. Generate the migration

```bash
bundle exec rake db:create_migration NAME=create_tweets
```

3. Modify the newly created migration file, which should be at `db/migrate/YYYYMMDDHHMMSS_create_tweets.rb`:

```ruby
class CreateTweets < ActiveRecord::Migration[7.1]
  def change
    create_table :tweets do |t|
      t.string :body
      t.string :author

      t.timestamps
    end
  end
end
```
