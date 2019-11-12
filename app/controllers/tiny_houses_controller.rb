class TinyHousesController < ApplicationController
  def index
    @tiny_houses = TinyHouse.all
  end

  def mine
    @my_tiny_houses = current_user.own_tiny_houses
  end

  def my_rents
    @rent_tiny_houses = current_user.tiny_houses
  end

  def show
    @tiny_house = TinyHouse.find(params[:id])
  end

  def new
    @tiny_house = TinyHouse.new
  end

  def create
    @tiny_house = TinyHouse.new(tiny_house_params)

    if @tiny_house.save
      redirect_to tiny_house_path(@tiny_house)
    else
      render :new
    end
  end

  def edit
    @tiny_house = TinyHouse.find(params[:id])
  end

  def update
    @tiny_house = TinyHouse.find(params[:id])
    @tiny_house.update(tiny_house_params)

    redirect_to '/tiny_houses', notice: 'Tiny House updated successfully!'
  end

  def delete
    @tiny_house = TinyHouse.find(params[:id])
    @tiny_house.destroy

    redirect_to '/tiny_houses', notice: "#{@tiny_house.title} deleted successfully!"
  end

  private

  def tiny_house_params
    params.require(:tiny_house).permit(
      :title,
      :description,
      :location,
      :travellers_number,
      :price,
      :bed_number,
      :bedroom_number,
      :sauna,
      :kitchen,
      :wifi
    )
  end
end