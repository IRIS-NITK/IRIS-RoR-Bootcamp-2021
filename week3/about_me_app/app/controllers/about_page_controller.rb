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
        respond_to do |format|
            format.html {redirect_to '/'
            }
            format.json {
                if params[:message] != nil
                    render json: {"message": params[:message]}
                else
                    render json: {"message": "Please enter a message"}, status: :bad_request
                end
            }
            format.any{  
                render plain: "Invalid request format", status: :bad_request
            }
        end
    end

    private

    def check_for_form_details
        redirect_to '/about_form?notice=INVALID+REQUEST' unless params[:name].present? and params[:email].present?
    end
end
