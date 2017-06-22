class Description < ActiveRecord::Base
  has_many :categories
  has_many :items, through: :categories

  # def self.model_name
  #   ActiveModel::Name.new(self, nil, "Description")
  # end
end
