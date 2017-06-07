class Item < ActiveRecord::Base
  has_many :categories
  has_many :mountings, through: :categories
  accepts_nested_attributes_for :categories, reject_if: proc { |attributes| attributes['mounting_id'].blank? }
end
