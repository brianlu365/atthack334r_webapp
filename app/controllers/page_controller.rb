class PageController < ApplicationController
  def home
    @users = User.all.sort { |a, b| b.points <=> a.points }
  end
end
