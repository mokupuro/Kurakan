class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  
  has_many :favorites, dependent: :destroy
  has_one :circle_account, dependent: :destroy

  def twitter_link
    "https://twitter.com/#{self.twitter_id}"
  end

  def instagram_link
    "https://www.instagram.com/#{self.instagram_id}/"
  end

  def favorite(circle)
    favorites.create(circle: circle)
  end

  def unfavorite(circle)
    favorites.find_by(circle: circle).destroy
  end

  def favorite_of(circle)
    favorites.find_by(circle: circle)
  end
end
