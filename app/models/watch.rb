class Watch < ActiveRecord::Base
  belongs_to :user
  belongs_to :build_service
  has_many :pull_request

  attr_accessible :repo_id, :repo_name, :repo_owner, :build_service_id

  attr_accessor :open_reqs
end
