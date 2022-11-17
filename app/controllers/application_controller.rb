require 'pry'

class ApplicationController < Sinatra::Base 
  set :default_content_type, 'application/json'

   #done, gets all objects in chirper profile along with their messages 
  get '/chirper_profile' do
    profile = ChirperProfile.all
    profile.to_json(include: [:chirps], except: [:chirp_profile_image])
  end

  #done, gets all chirps
  get '/chirp' do
    chirps = Chirp.all
    chirps.to_json(include: [:chirper_profile])
  end

  #done, get profile by id 
  get '/chirper_profile/:id' do
    profiles = ChirperProfile.find(params[:id])
    profiles.to_json(include: [:chirps])
  end

  # post '/chirper_profile/:id' do
  #   profiles = ChirperProfile.find(name: params[:name])
  #   profiles.all.to_json(include: [:chirps])
  # end

  post '/chirper_profile/:id' do
    binding.pry
    # profiles = ChirperProfile.find(name: params[:name])
    # profiles.all.to_json(include: [:chirps])
  end

  patch '/chirper_profile/:id' do
    profiles = ChirperProfile.find(params[:id])
    profiles.update(name: params[:name])
    profiles.to_json(include: [:chirps])
  end

  #done
  delete '/chirper_profile/:id' do
    profiles = ChirperProfile.find(params[:id])
    profiles.destroy
    profiles.to_json
  end 

   #done
  get '/' do
    "Hello World"
  end

end 

# Table.all.to_json(except: [:column])