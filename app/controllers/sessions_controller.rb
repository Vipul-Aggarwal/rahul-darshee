require 'open-uri'
class SessionsController < ApplicationController
  def create
    #access_token = params["code"]
    access_token =  env['omniauth.auth']['credentials'][:token]
    user = User.from_omniauth(env['omniauth.auth'])
    session[:user_id] = user.id
    session[:uid] = user.uid
    session[:access_token] = access_token
    user.oauth_token = access_token
    user.save!
    #fetch_access_token access_token
    redirect_to root_url
  end

  def fetch_access_token code
    #'632994823489302', 'b93fb5e312ccd8061632e9f6b9891791'
    url = "https://graph.facebook.com/oauth/access_token?"
    +"client_id=" + "632994823489302" + "&redirect_uri=" + URI::encode("http://callback")
    + "&client_secret=" + "b93fb5e312ccd8061632e9f6b9891791" + "&code=" + code
    p url
    response = RestClient.get url
    p response
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_url
  end
end