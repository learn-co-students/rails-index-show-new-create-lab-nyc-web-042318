class CouponsController < ApplicationController
  def index
    @coupons = Coupon.all
  end

  def new

  end

  def create
    # byebug
    @coupon = Coupon.new
    @coupon.store=params['coupon']['store']
    @coupon.coupon_code=params['coupon']['coupon_code']
    @coupon.save
    redirect_to (@coupon)
  end


  def show
    @coupon = Coupon.find(params[:id])
  end

end
