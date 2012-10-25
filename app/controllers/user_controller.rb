
class UserController < ApplicationController

  def connect
    client = WeiboOAuth2::Client.new
    redirect_to client.authorize_url
  end

  def callback
    client = WeiboOAuth2::Client.new
    access_token = client.auth_code.get_token(params[:code].to_s)
    session[:uid] = access_token.params["uid"]
    session[:access_token] = access_token.token
    session[:expires_at] = access_token.expires_at

    user = User.where("weiboid = ?", session[:uid])
    if user.blank?
      User.create(:weiboid => session[:uid])
    end

    redirect_to '/'
  end

  def logout
    reset_session
    redirect_to '/'
  end
end
