class ApplicationController < Sinatra::Base 
  set :default_content_type, 'application/json'

  get '/chirper_profile' do
    ChirperProfile = ChirperProfile.all
    # ChirperProfile = ChirperProfile.all.order(:name)
    # ChirperProfile.to_json(include: :chirp_message)
  end

  get '/chirp' do
    chirps = Chirps.all
    chirps.to_json
  end

  get '/' do
    "Hello World"
  end

end 
