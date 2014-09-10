class HomeController < ApplicationController
  def index
    @highlights = Highlights.all
  end

end
