class AboutPageController < ApplicationController
  def about_form
    render "boot_form"
  end
  def about_json
    respond_to do |format|
      # if request.format !=:json &&request.format!=:html
      #   render plain:"Invalid Request Format",:status =>400
      # end
      # if params[:format]!='json'&&params[:format]!='html'
      #   render plain:"Invalid Request Format",:status =>400
      # end
      # if !format.html && !format.json
      #   render plain:"Invalid Request Format",:status =>400
      # end
      format.html {redirect_to "/"}
      format.json {
        message = params[:message]
        if !params[:message]||message == ''
          render :json => {:response => 'Bad Request' },:status => 400
        else
          render :json => {:response => message },:status => 200
        end
        }
        # if params[:format].nil?
        #   render plain:"Invalid Request Format",:status =>400
        # end
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
