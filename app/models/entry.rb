# app/models/entry.rb
class Entry < ApplicationRecord
  belongs_to :place
  has_one_attached :image
end
