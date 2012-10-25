class ApplicationController < ActionController::Base
  protect_from_forgery

  WeiboOAuth2::Config.api_key = "2038969047"
  WeiboOAuth2::Config.api_secret = "d5eb15e3044c8170c2d8e2d38b461b59"
  WeiboOAuth2::Config.redirect_uri = "http://127.0.0.1/user/callback"
end
