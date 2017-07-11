class WelcomeController < ApplicationController

  def index
  end

  def create
    @amount = params[:amount].to_f
    @tax = params[:tax].to_f
    @tip = params[:tip].to_f
    @people = params[:people].to_f


    @total = (@amount + (@amount * (@tax/100)) + (@tip/100)).to_f / @people

    render 'index'

  end

end
