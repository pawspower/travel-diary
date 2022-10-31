class City < ActiveRecord::Base
    belongs_to :cities, :optional => true
end