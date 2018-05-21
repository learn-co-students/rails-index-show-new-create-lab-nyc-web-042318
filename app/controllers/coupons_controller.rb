# THis class interfaces with model to the view. Define the
# standard methods to make the translation
class CouponsController < ApplicationController
  def index
    @coupons = Coupon.all
  end

  def new
    @coupon = Coupon.find_by(params[:id])
  end

  def show
  end
end
