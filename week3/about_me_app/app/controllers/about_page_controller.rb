class AboutPageController < ApplicationController
    before_action :authorization, only: %i[about_page]
    def index
    end

    def about_page
        @name = params[:name]
        @email = params[:email]
    end

    def about_form
    end

    def about_json
        if params[:format] == "html" || params[:format] == nil
            redirect_to '/'
        elsif params[:format] == "json"
        respond_to do |format|
            if(params[:message]!=nil)
                # format.json{render json: {
                #     message: params[:message]},
                #     status: 200
                #     }
                format.json {render json: {message: params[:message]}, status: 200}
            end
            if(params[:message]==nil)
                # format.json{render json:
                #     status: 400
                # }
                format.json {render json: {message: "Please enter a valid message query param!"}, status: 400}
            end
            # format.json {render json: {message: "OK"}, status: 200}
        end
        end
    end

    private

    def authorization
        if(!@name||!@email)
            redirect_to '/about_form' unless params[:name].present? and params[:email].present?
        end
    end
end
