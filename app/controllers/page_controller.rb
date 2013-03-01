class PageController < ApplicationController
  def home
  end

  def about_us
  end
  
  def recipes
  end
  
  def product
  end

  def articles
  end

  def calender
	  # an instance variable starts with @ sign and it is available to the view part 
	  @year = params[:year]
	  @month = params[:month]     # these params is used to get the parameters passed in url string e.g. http://localhost:3000/page/calender?year=2013&month=feb
	  @my_time = Time.now
	  @name = "Anchal"
	  @products = %w(skiis boots poles mittens mask hat 'hello buddy')  # creating an array with %w sign this syntax is same as @products = ["skills","boots","mittens"]
	  # = ["skills","boots","mittens"]
	  @products1 = ["skills","boots","mittens"]
  end

  def blog
  end

  def login
  end
end
