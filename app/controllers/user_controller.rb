class UserController < ApplicationController

  def index 

    users = User.all
    respond_to do |format| 
      format.html {render status: :ok, json: users.organize()}
      format.csv { send_data users.to_csv.perform_async(*args), 
      filename: “user-#{Date.today}.csv” } 
  end 
end
