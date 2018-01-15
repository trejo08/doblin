class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :oauth_applications, dependent: :destroy
  has_many :tokens, class_name: Doorkeeper::AccessToken, foreign_key: :resource_owner_id
end
