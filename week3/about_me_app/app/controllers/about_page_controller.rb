class AboutPageController < ApplicationController
    
 
  def form
  end

  def about_form
  end
      
  end

  def about_page
    @name = params[:name]
    @email = params[:email]
  end

  def about_json
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
