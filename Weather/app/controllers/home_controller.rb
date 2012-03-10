class HomeController < ApplicationController
  
  def home 
      @time = Time.now
  end

end
