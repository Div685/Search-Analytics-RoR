class SearchController < ApplicationController
  before_action :check_session

  def index
    @user = session[:user_id]

    @session_values = Search.where(session_id: @user).pluck(:query).reverse.first(100)
  end
end
