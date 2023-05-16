class TwowheelersController < ApplicationController
  def index
    @twowheelers = Twowheeler.all
    render json: @twowheelers
  end

  def create
    @twowheeler = Twowheeler.new(twowheeler_params)
    if @twowheeler.valid?
      @twowheeler.save
      render json: { message: 'Twowheeler has been created successfully!', twowheeler_obj: @twowheeler }, status: :created
    else
      render json: { message: 'Twowheeler couldn\'t be created.' }, status: :not_acceptable
    end
  end

  def destroy
    id = params[:id]
    @twowheeler = Twowheeler.find(id)

    if @twowheeler
      @twowheeler.destroy
      render json: { message: 'Twowheeler has been destroyed successfully!' }, status: :ok
    else
      render json: { message: 'Something went wrong.' }, status: :not_found
    end
  end

  private

  def twowheeler_params
    params.require(:twowheeler).permit(:name, :description, :image_url, :price, :model_year, :engine_type, :fuel_type)
  end
end
