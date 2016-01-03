class PageController < ApplicationController
  def home
    @users = User.all
  end
end
