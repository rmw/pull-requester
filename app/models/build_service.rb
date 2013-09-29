class BuildService < ActiveRecord::Base
  #has_many :watches
  #has_many :api_keys

  attr_accessible :name, :badge_pattern
end
