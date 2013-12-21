class ApiKey < ActiveRecord::Base
  belongs_to :user
  belongs_to :build_service


  validates :user, presence: true
  validates :build_service,
    presence: true,
    uniqueness: {scope: :user, message: 'cannot have 2 keys for 1 service'}
  validates :key, length: {within: 2..127}, presence: true

  attr_accessible :key, :build_service_id, :user_id
end
