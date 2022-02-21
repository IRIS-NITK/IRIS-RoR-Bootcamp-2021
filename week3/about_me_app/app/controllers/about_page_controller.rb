class AboutPageController < ApplicationController
    def home
    end
    def page
        if params[:name].present? and params[:email].present?
            @name = params[:name]
            @email = params[:email]
        else
            redirect_to root_path    
        end
        
    end
    def form
    end
    def json
        respond_to do |format|
            format.html {redirect_to root_path} 
            format.any {render plain: "Invalid Request Format", status: :bad_request}
            format.json {
                if params[:message]!=nil
                    render json: {message: params[:message]}, status: :ok
                else
                    render json: {message: "INVALID"}, status: :bad_request
                    # return status: :bad_request
                end
            }
            end
        end
end
