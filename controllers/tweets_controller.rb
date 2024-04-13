require './models/tweet'

# Write the Tweet Controller below

# CREATE
get '/tweets/new' do
    erb :'tweets/new'
end

post '/tweets' do
    tweet = Tweet.new(params[:tweet])
    if tweet.save
        redirect to("/tweets")
    else
        erb :'tweets/new'
    end
end

# READ
get '/tweets' do 
    @tweets = Tweet.all
    erb :'tweets/index'
end

get '/tweets/:id' do 
    @tweet = Tweet.find_by(id: params[:id]) # find_by returns nil
    if @tweet
        erb :'tweets/show'
    else
        redirect to("/")
    end
end

# UPDATE