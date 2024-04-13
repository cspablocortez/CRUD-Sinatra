require 'sinatra'
require 'sinatra/activerecord'

set :database, { adapter: 'sqlite3', database: 'tweets.db' }

class Tweet < ActiveRecord::Base
    
end