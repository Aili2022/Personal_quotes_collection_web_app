class HomeController < ApplicationController
  # this function is to retrieve top 5 quotes from the database
  def index
    @quotes = Quote.includes(:philosopher).where(is_public:true).last(5)
  end

  #display logged in user's associated quotes and philosopher
  def uquotes
    @quotes =Quote.includes(:philosopher).where(user_id: session[:user_id])
  end


end
