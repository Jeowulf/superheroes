class Superhero < ActiveRecord::Base
  validates :name, :secret_identity, :image_url, presence: true
  has_many :villains
end
