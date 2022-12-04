class SearchController < ApplicationController
  before_action :check_session

  def index
    @user = session[:user_id]
    @checks = Search.find_by(session_id: @user)
    
    @session_values = Search.where(session_id: @user).pluck(:query)

    @searches = Search.group(:query).pluck('query, count(query) as COUNT').sort_by do |a|
      a[1]
    end.reverse.first(100)
  end
end
