require 'sinatra'
require 'sinatra/activerecord'
require_relative 'models/tweet'
require_relative 'controllers/tweets_controller'

set :database, { adapter: 'sqlite3', database: 'tweets.db' }


get '/' do
    redirect to ('/tweets')
end
