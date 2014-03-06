class SocialMediaLink < ActiveRecord::Base
  attr_accessible :desc, :image_url, :name, :url
  belongs_to :organization
end
