require 'sinatra'
require 'sinatra/activerecord'

set :database, { adapter: 'sqlite3', database: 'tweets.db' }


get '/' do
    redirect to ("/tweets")
end

class Tweet < ActiveRecord::Base
    # Models are used to define the structure and behavior of db tables
    # Define associations, validations, and other model logic here
end


# Write the Tweet Controller below

# CREATE
get '/tweets/new' do
    erb :new
end

post '/tweets' do
    tweet = Tweet.new(params[:tweet])
    tweet.save
    redirect to("/tweets/#{tweet.id}")
end

# READ
get '/tweets' do 
    @tweets = Tweet.all
    erb :'tweets/index'
end

get 'tweets/:id' do 
    @tweet = Tweet.find(params[:id])
    erb :show
end

# UPDATE