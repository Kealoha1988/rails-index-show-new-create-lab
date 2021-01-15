class CouponsController < ApplicationController

  def new
  end

  def create
    @coupon = Coupon.new
    @coupon.coupon_code = params[:coupon_code]
    @coupon.store = params[:store]
    if @coupon.save
    redirect_to coupons_path
    else 
      redirect_to :/
    end
end

  def index
    @coupons = Coupon.all
  end

  def show
    @coupon = Coupon.find_by_id(params[:id])
  end

  private



end