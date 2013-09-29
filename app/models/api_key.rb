class ApiKey < ActiveRecord::Base
  belongs_to :user
  belongs_to :build_service

  validates :user, presence: true
  validates :build_service, presence: true
  validates :key, length: {within: 8..127}, presence: true
end
