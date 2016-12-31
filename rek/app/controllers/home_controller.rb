class HomeController < ApplicationController

  def home
    @wedding_day = Date.parse('2017-07-01')
    @days = (@wedding_day - Date.current).to_i
  end

end
