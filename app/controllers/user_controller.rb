
class UserController < ApplicationController

  WeiboOAuth2::Config.api_key = "2038969047"
  WeiboOAuth2::Config.api_secret = "d5eb15e3044c8170c2d8e2d38b461b59"
  WeiboOAuth2::Config.redirect_uri = "http://127.0.0.1/user/callback"  

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
