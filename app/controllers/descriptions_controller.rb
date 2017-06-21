class DescriptionsController < ApplicationController
  def index
    @descriptions = Description.all
  end

  def create
    @description = Description.new(description_params)

    if @description.save
      flash[:notice] = "description was saved successfully."
      redirect_to @description
    else
      flash.now[:alert] = "Error creating description. Please try again."
      render :new
    end
  end

  private

  def description_params
    params.require(:mounting).permit(:element)
  end
end
