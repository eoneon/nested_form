class DescriptionsController < ApplicationController
  def index
    @descriptions = Description.all
  end
end
