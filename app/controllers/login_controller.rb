class LoginController < ApplicationController
  def index
  end

  def login
    
    render '/login/console.html.erb'
  end
end
