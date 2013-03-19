class SessionsController < ApplicationController
  def new
    session[:state] = Digest::MD5.hexdigest(rand.to_s)
    redirect_to VkontakteApi.authorization_url(scope: [:notify, :friends, :photos], state: session[:state])
  end

  def from_auth
    redirect_to login_url, alert: 'Authorization error' if params[:state] != session[:state]

    @vk = VkontakteApi.authorize(code: params[:code])

    session[:token] = @vk.token
    session[:vk_id] = @vk.user_id

    redirect_to albums_path
  end
end