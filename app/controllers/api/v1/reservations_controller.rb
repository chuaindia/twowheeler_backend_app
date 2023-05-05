class Api::V1::ReservationsController < ApplicationController
  # CSRF Token Validations SKIP
  protect_from_forgery with: :null_session
  def reserve
    # Create an instance of reservation
    reservation = Reservation.new(city: params[:city], duration_of_test_drive: params[:duration_of_test_drive],
    date_of_reservation: params[:date_of_reservation], user_id: params[:user_id],
                                  twowheeler_id: params[:twowheeler_id])
    # Check for validation
    if !reservation.valid?
      render status: 400, json: { message: 'Bad request.', status: 400 }
    elsif reservation.save
      # If it is valid save
      render status: 201, json: { message: 'Reservation made successfully.', data: reservation, status: 201 }
    else
      render status: 500, json: { message: 'Something went wrong please try again later.', status: 500 }
    end
  end

  def checkout
    # Check for availablity
    reservation = Reservation.find_by(id: params[:id])
    if reservation.nil?
      render status: 404, json: { message: 'Reservation could not be found.', status: 404 }
    elsif reservation.destroy
      # If Available destroy
      render status: 200, json: { message: 'Reservation have been removed', status: 200 }
    else
      render status: 500, json: { message: 'Something went wrong please try again later.', status: 500 }
    end
  end
end

# class ReservationsController < ApplicationController
#   before_action :set_reservation, only: %i[ show update destroy ]

#   # GET /reservations
#   def index
#     @reservations = Reservation.all

#     render json: @reservations
#   end

#   # GET /reservations/1
#   def show
#     render json: @reservation
#   end

#   # POST /reservations
#   def create
#     @reservation = Reservation.new(reservation_params)

#     if @reservation.save
#       render json: @reservation, status: :created, location: @reservation
#     else
#       render json: @reservation.errors, status: :unprocessable_entity
#     end
#   end

#   # PATCH/PUT /reservations/1
#   def update
#     if @reservation.update(reservation_params)
#       render json: @reservation
#     else
#       render json: @reservation.errors, status: :unprocessable_entity
#     end
#   end

#   # DELETE /reservations/1
#   def destroy
#     @reservation.destroy
#   end

#   private
#     # Use callbacks to share common setup or constraints between actions.
#     def set_reservation
#       @reservation = Reservation.find(params[:id])
#     end

#     # Only allow a list of trusted parameters through.
#     def reservation_params
#       params.require(:reservation).permit(:city, :duration_of_test_drive, :date_of_reservation)
#     end
# end
