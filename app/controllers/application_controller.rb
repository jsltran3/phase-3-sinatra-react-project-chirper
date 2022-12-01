require 'pry'

class ApplicationController < Sinatra::Base 
  set :default_content_type, 'application/json'

   #done, gets all objects in chirper profile along with their messages 
  get '/chirper_profile' do
    profile = ChirperProfile.all
    profile.to_json(include: [:chirps])
  end

  #done, gets all chirps
  get '/chirp' do
    chirps = Chirp.all
    chirps.to_json(include: [:chirper_profile])
  end

  # get '/chirp/:id' do
  #   chirps = Chirp.find(params[:id])
  #   chirps.to_json(include: [:chirper_profile])
  # end


  # #done, get profile by id 
  # get '/chirper_profile/:id' do
  #   profiles = ChirperProfile.find(params[:id])
  #   profiles.to_json(include: [:chirps])
  # end

  # post '/chirper_profile/:id' do
  #   profiles = ChirperProfile.find(name: params[:name])
  #   profiles.all.to_json(include: [:chirps])
  # end

  post '/chirper_profile/' do
    profile = ChirperProfile.create(
      name: params[:name]
    )
    profiles = ChirperProfile.all.order(:name)
    profiles.to_json(include: [:chirps])
  end
  
  post '/chirp' do
    # binding.pry
    chirp = Chirp.create(
      chirp_message: params[:chirp_message],
      chirper_profile_id: params[:chirper_profile_id],
      like: params[:like]
    )
  
    chirp.to_json(include: :chirper_profile)
    # binding.pry
    # chirp.to_json

  end

  # post '/chirp' do
  #   chirp = Chirp.create(
  #     chirp_message: params[:chirp_message],
  #     chirper_profile_id: params[:chirper_profile_id]
  #   )
  #   # chirps = Chirp.all.order(:chirp_message)
  #   # chirp.to_json(include: [:chirper_profiles])
  #   # chirps.to_json
  # end

  patch '/chirp/:id' do
    chirp_like = Chirp.find(params[:id])
    chirp_like.update(like: params[:like])
    chirp_like.to_json
  end

  #done
  delete '/chirper_profile/:id' do
    profiles = ChirperProfile.find(params[:id])
    profiles.destroy
    profiles.to_json
  end 

  delete '/chirp/:id' do
    chirps = Chirp.find(params[:id])
    chirps.destroy
    chirps.to_json
  end 

   #done
  get '/' do
    "Hello World"
  end

end 

# Table.all.to_json(except: [:column])