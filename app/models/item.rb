class Item < ActiveRecord::Base
  has_many :categories
  has_many :descriptions, through: :categories
end
