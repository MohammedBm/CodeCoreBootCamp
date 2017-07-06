class BillController < ApplicationController
  def index
  end

  def split
    @amount = params[:amount].to_f
    @tax = params[:tax].to_f
    @tip = params[:tip].to_f
    @count = params[:count].to_f
    render 'index'
  end


end
