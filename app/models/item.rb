class Item < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :prefecture
  belongs_to_active_hash :condition
  belongs_to_active_hash :burden
  belongs_to_active_hash :shipday

  belongs_to :user
  
  has_many :images
  accepts_nested_attributes_for :images, allow_destroy: true
end
