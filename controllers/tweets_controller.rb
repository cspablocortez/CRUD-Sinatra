require './models/tweet'

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