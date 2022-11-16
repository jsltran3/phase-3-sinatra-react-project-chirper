class ApplicationController < Sinatra::Base 
  set :default_content_type, 'application/json'

  get '/chirper_profile' do
    chirp_profile = ChirperProfile.all()

    # ChirperProfile = ChirperProfile.all.order(:name)
    chirp_profile.to_json(include: :chirp_message)
  end

  get '/chirp' do
    chirps = Chirp.all
    chirps.to_json
  end

  get '/' do
    "Hello World"
  end

end 
