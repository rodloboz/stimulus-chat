class PagesController < ApplicationController
  skip_before_action :authenticate_user!

  def home
    @users = User.all - [current_user]
  end
end
