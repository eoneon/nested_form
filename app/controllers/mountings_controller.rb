class MountingsController < ApplicationController
  def index
    @mountings = Mounting.all
  end

  def show
    @mounting = Mounting.find(params[:id])
  end

  def new
    @mounting = Mounting.new
  end

  def create
    @mounting = Mounting.new(mounting_params)

    if @mounting.save
      flash[:notice] = "Mounting was saved successfully."
      redirect_to @mounting
    else
      flash.now[:alert] = "Error creating mounting. Please try again."
      render :new
    end
  end

  private

  def mounting_params
    params.require(:mounting).permit(:name)
  end
end
