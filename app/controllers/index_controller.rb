
class IndexController < ApplicationController
   before_filter :login?

  def index
    @articles = Article.where("weiboid = ?", session[:uid]).order("created_at DESC")

    if session[:uid]
      @user = @client.users.show_by_uid(session[:uid]) 
      @statuses = @client.statuses
    end
    
  end

  def collect
    url = params[:url]
    title = params[:title]
    uid = session[:uid]

    article = Article.create(:url=>url, :title=>title, :weiboid=>uid)

    render :formats => :js
  end

  def login?
    @client = WeiboOAuth2::Client.new
    if session[:access_token] && !@client.authorized?
      token = @client.get_token_from_hash({:access_token => session[:access_token], :expires_at => session[:expires_at]}) 
      
      unless token.validated?
        reset_session
        redirect_to '/user/connect'
        return
      end
    end
  end
end
