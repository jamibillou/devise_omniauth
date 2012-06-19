class ServicesController < ApplicationController

  def index
  	@services = current_user.services
  end

  def create
  end
end
