class AboutPageController < ApplicationController
    before_action :check_for_form_details, only: %i[aboutPage]

    def aboutPage
        @name = params[:name].upcase
        @email = params[:email].upcase
    end

    def aboutForm
    end

    def home
    end

    def aboutJson
        # respond_to do |format|
        #     format.html {redirect_to '/'
        #     return}
        #     format.json {
        #         if params[:message] != nil
        #             render json: {"message": params[:message]}
        #             return
        #         else
        #             render json: {"message": "Please enter a message"}, status: :bad_request
        #             return
        #         end
        #     }
        # end
        #     render plain: "Invalid request format", status: :bad_request
        # return
        if params[:format] == "html" || params[:format] == nil
            redirect_to '/'
            return
        elsif params[:format] == "json"
            if params[:message] != nil
                render json: {"message": params[:message]}
                return
            else
                render json: {"message": "Please enter a message"}, status: :bad_request
                return
            end
        else
            render plain: "Invalid request format", status: :bad_request
            return
        end
    end

    private

    def check_for_form_details
        redirect_to '/about_form?notice=INVALID+REQUEST' unless params[:name].present? and params[:email].present?
    end
end
