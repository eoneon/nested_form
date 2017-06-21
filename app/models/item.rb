class Item < ActiveRecord::Base
  has_many :categories
  has_many :descriptions, through: :categories

  accepts_nested_attributes_for :categories, reject_if: proc { |attributes| attributes['description_id'].blank? }
end
