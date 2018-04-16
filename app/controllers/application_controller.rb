class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def index
    @users = User.all
  end
  
end
