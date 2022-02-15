class AboutPageController < ApplicationController
  def index
  end
  def form
  end

  def page
    @name = params[:name]
    @email = params[:email]
  end

  def json
    respond_to do |format|
      format.html { redirect_to root_path }
      format.json { 
        unless params[:message] == nil
          render json: { message: params[:message] }, status: :ok
        else
          render json: { message: "Invalid" }, status: :bad_request
        end
      }
      format.any { render plain: "Invalid Request Format", status: :bad_request}
    end
  end
end
