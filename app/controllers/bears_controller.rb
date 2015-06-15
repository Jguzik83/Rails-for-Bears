class BearsController < ApplicationController
  # http_basic_authenticate_with name: "bears", password: "bears"

  def index
    @bears = Bear.all
    # @bears = Bear.new
  end

  def show
    @bear = Bear.find(params[:id])
  end

  def new
    @bear = Bear.new
  end

  def edit
    # @bear = Bear.new
    @bear = Bear.find(params[:id])
  end

  def create
    @bear = Bear.new(bear_params)
    if @bear.save
      redirect_to '/bears'
    else
      render 'new'
    end
  end

  def destroy
    Bear.find(params[:id]).destroy
    redirect_to '/bears'
  end

  def update
    @bear = Bear.find(params[:id])
    @bear.update_attributes(bear_params)
    redirect_to '/bears'
  end

  private

  def bear_params
    params.require(:bear).permit(:name, :species)
  end

end
