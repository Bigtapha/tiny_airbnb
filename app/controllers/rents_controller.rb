class RentsController < ApplicationController

  # def new
  #   @tiny_house = TinyHouse.find(params[:tiny_house_id])
  #   @rent = Rent.new
  # end

  def create
    @rent = Rent.new(rent_params)
    @tiny_house = TinyHouse.find(params[:tiny_house_id])
    @rent.tiny_house_id = params[:tiny_house_id]
    @rent.user_id = current_user.id 
    if @rent.save
        redirect_to my_rents_tiny_houses_path, notice: 'Rent was successfully created.'
    else
        render 'tiny_houses/show'
    end
  end

  private

  def rent_params
    params.require(:rent).permit(:date)
  end
end
