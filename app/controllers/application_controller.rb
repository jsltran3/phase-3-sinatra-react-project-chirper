class ApplicationController <Sinatra::Base 
  set :default_content_type, 'application/json'

  post '/chirps' do
    chirp = Chirp.create(chirp_message: params[:chirp_message], 
    created_at: params[:created_at], 
    updated_at: params[:updated_at], 
    )
  end

  get '/chirper_profiles' do
    chirper_profiles = Chirper_profile.all
    chirper_profiles.to_json
  end 

  get "/chirps" do 
    chirps = Chirp.all
    chirps.to_json
  end
  
  # delete '/' do 
  # end 

end 
