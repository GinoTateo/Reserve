class HomeController < ApplicationController
  def index
    res_by_date = Reservation.order(:date)
    @reservations = res_by_date.last(5)
  end
end
