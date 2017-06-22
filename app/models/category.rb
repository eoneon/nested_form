class Category < ActiveRecord::Base
  belongs_to :item
<<<<<<< HEAD
  belongs_to :mounting
=======
  belongs_to :description

  # def self.model_name
  #   ActiveModel::Name.new(self, nil, "Category")
  # end
>>>>>>> hmt_types
end
