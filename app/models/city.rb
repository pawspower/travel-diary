class City < ActiveRecord::Base
    belongs_to :country, :optional => true
    
end