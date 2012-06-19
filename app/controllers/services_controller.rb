class ServicesController < ApplicationController

  def index
  	@services = current_user.services
  end

  def destroy
  	@service = current_user.services.find(params[:id])
  	@service.destroy

  	redirect_to services_path
  end
end
