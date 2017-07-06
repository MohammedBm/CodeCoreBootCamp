class RandomController < ApplicationController
  def index
  end

  def name
    @people = params[:people].split(",")
    render "index"
  end
end
