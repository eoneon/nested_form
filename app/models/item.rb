class Item < ActiveRecord::Base
  has_many :categories
<<<<<<< HEAD
  has_many :mountings, through: :categories
  accepts_nested_attributes_for :categories, reject_if: proc { |attributes| attributes['mounting_id'].blank? }
=======
  has_many :descriptions, through: :categories

  accepts_nested_attributes_for :categories, reject_if: proc { |attributes| attributes['description_id'].blank? }
>>>>>>> hmt_types
end
