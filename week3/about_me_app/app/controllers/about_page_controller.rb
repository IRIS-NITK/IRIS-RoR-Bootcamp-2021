class AboutPageController < ApplicationController
  def about_form
    render "boot_form"
  end
  def about_json
    respond_to do |format|
      format.html {redirect_to "/"}
      format.json {
        message = params[:message]
        if !params[:message]||message == ''
          render :json => {:response => 'Bad Request' },:status => 400
        else
          render :json => {:response => message },:status => 200
        end
        }
    end
  end
  def about_page
    @name = params[:name]
    @email = params[:email]
    # @output = "Name: "+@name+"\nEmail: "+@email
    # render plain:@output
    render "result"
  end
  def home
    render "index"
  end
  def not_found
    raise ActionController::RoutingError.new('Not Found')
  end

end
