class HomeController < ApplicationController

  def index
    @users =  params[:commit].to_s == "Search User" ? "Js form" : "Html form"
    respond_to do |format|
      format.html
      format.js
    end
  end
end
