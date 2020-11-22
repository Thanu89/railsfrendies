class HomeController < ApplicationController
  def index
  end

  def about
    @about_me = "My name is Thanu Yogarajan"
  end
end
