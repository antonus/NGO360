class Organization < ActiveRecord::Base
  attr_accessible :name, :address, :url
  belongs_to :user
  has_many :socialmedialinks

  validates :user_id, presence: true
  validates :name, presence: true, length: { maximum: 140 }

  def self.search(search)
    if search
      find(:all, :conditions => ['name ILIKE ?', "%#{search}%"])
    else
      find(:all)
    end
  end

end
