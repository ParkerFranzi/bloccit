class ApplicationController < ActionController::Base
  protect_from_forgery

  rescue_from CanCan::AccessDenied do |excpetion|
    redirect_to root_url, :alert => excpetion.message
  end

  def after_sign_in_path_for(resource)
    topics_path
  end
end
