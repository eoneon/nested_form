class Category < ActiveRecord::Base
  belongs_to :item
  belongs_to :description

  # def self.model_name
  #   ActiveModel::Name.new(self, nil, "Category")
  # end
end
