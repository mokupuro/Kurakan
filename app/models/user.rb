class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  
  def twitter_link
    "https://twitter.com/#{self.twitter_id}"
  end

  def instagram_link
    "https://www.instagram.com/#{self.instagram_id}/"
  end
end
