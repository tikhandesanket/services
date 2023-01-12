class HomeController < ApplicationController

  def index
    @users =  params[:commit].to_s == "Search User" ? "Js form" : "Html form"
    respond_to do |format|
      format.html
      format.js
    end
  end

def get_report 

  users = User.all 
    respond_to do |format| 
    format.html {render status: :ok, json: users}
    format.csv { send_data users.to_csv.perform_async(*args), 
    filename: "users-#{Date.today}.csv"} 
  end 
end


end
