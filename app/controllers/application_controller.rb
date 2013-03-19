class ApplicationController < ActionController::Base
  protect_from_forgery

  helper_method :current_user
  
private
  def current_user
    @user ||= VkUser.new(token: session[:token], vk_id: session[:vk_id])
  end
end
