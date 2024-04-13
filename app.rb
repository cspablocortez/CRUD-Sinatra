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