class CouponsController < ApplicationController

  def index
    @coupons = Coupon.all
  end

  def new
  end

  def create
  
    @coupon = Coupon.create(coupon_params)
    @coupon.save
    redirect_to coupon_path(@coupon)
  end

  def show

    @coupon = Coupon.find(params[:id])
  end

  def coupon_params
    params.require(:coupon).permit(:coupon_code, :store)
  end

end
