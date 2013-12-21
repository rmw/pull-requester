class User < ActiveRecord::Base
  devise :database_authenticatable, :registerable,
         :rememberable, :trackable, :validatable, :omniauthable,
         :omniauth_providers => [:github]

  has_many :watches
  has_many :api_keys

  accepts_nested_attributes_for :api_keys

  attr_accessible :email,
    :password,
    :password_confirmation,
    :remember_me,
    :name,
    :api_keys_attributes
end
