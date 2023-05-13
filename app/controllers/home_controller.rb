class HomeController < ApplicationController
  def index
    @status = Status.new
  end
end
