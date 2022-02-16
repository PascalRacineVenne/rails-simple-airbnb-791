class FlatsController < ApplicationController
  before_action :select_flat, only: [:show, :edit, :update, :destroy]
  def index
    @flats = Flat.all
  end

  def show; end

  def new
    @flat = Flat.new
  end
  
  # def create
  #   @flat = Flat.new(flat_params)
  #   if @flat.save
  #     redirect_to :
  #   else
  #     render :new
  #   end
  # end

  def edit; end

  def update
    
  end

  def destroy
    
  end

  private

  def flat_params
    params.require(:flat).permit(:name, :address, :description, :price_per_night, :number_of_guests)
  end

  def select_flat
    @flat = Flat.find(params(:id))
  end
end
