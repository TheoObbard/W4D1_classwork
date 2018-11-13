# == Schema Information
#
# Table name: artworks
#
#  id        :bigint(8)        not null, primary key
#  title     :string           not null
#  image_url :string
#  artist_id :integer          not null
#

class Artwork < ApplicationRecord
  validates :title, :image_url, :artist_id, presence: true, uniqueness: true
  
end
