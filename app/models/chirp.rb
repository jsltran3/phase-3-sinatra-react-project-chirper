class Chirp < ActiveRecord::Base
    belongs_to :chirper_profile

    def self.allProfiles
        Student.all.order :name
    end
 
end 