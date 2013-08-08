class EatController < ApplicationController
  def food
    Resque.enqueue(Eat, params[:food])
    i =0
    while i < 2109301239 do
      i = i + 1 
    end

    4000.times { 20*20*30 }
    render :text => "Put in fridge to eat later"
  end
end
