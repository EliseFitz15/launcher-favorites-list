require "sinatra"
require "csv"
require "pry"

get '/favorites' do
  @favorites = CSV.readlines("favorites_list.csv", headers: true)
  erb :index
end

get "/" do
  redirect "/favorites"
end

post "/favorites" do
  fav = params[:favorite]
  unless fav.strip.empty?
    CSV.open("favorites_list.csv", "a") do |file|
      file << [fav]
    end
  end
  redirect "/favorites"
end
