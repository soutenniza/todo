class EatController < ApplicationController
  def food
    Resque.enqueue(Eat, params[:food])
    i =0
    while i < 2109301239 do
      if i % 2 = 0
        i = i + 2
      end
      if i % 3
        i = i - 1
      end
    end

    4000.times { 20*20*30 }
    render :text => "Put in fridge to eat later"
  end
end
