class Item < ActiveRecord::Base
  has_and_belongs_to_many :mountings
  accepts_nested_attributes_for :mountings
end
