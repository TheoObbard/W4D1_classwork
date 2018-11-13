# == Schema Information
#
# Table name: users
#
#  id       :bigint(8)        not null, primary key
#  username :string           not null
#

class User < ApplicationRecord
  validates :username, presence: true, uniqueness: true
  
  has_many :artists,
  foreign_key: :artist_id,
  class_name: 'Artwork'
  
  has_many :views, 
  foreign_key: :viewer_id, 
  class_name: :ArtworkShare

end
