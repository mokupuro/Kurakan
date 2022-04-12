class UserInfo < ApplicationRecord
  belongs_to :user

  def twitter_link
    "https://twitter.com/#{self.twitter_id}"
  end

  def instagram_link
    "https://www.instagram.com/#{self.instagram_id}/"
  end
end
