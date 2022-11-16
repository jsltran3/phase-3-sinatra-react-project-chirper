class Chirp < ActiveRecord::Base
    belongs_to :chirper_profile

    def self.allProfiles
        Chirp.all.order :name
    end
 
end 