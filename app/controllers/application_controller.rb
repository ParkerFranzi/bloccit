class ApplicationController < ActionController::Base
  protect_from_forgery

  rescue_from CanCan::AccessDenied do |excpetion|
    redirect_to root_url, :alert => excpetion.message
  end
end
