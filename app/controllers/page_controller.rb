class PageController < ApplicationController
  def home
    @users = User.all.to_a
    @users.sort { |a, b| b.points <=> a.points }
  end
end
