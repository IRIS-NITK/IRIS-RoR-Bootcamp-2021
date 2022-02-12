class AboutController < ApplicationController
    
    def home
    end
    def postpage
      @name = params[:name]
      @email=params[:email]
      # render plain: "@name@email"
    
    #   render:update do |page|
    #   page.replace_html  'word_message', "#{word.length} characters"
    end
    def json
      if params[:].key

      end
      respond_to do |format|
        format.html{render plain:"hello "}
        format.json{ render json:{message:"hello world"},status:404}
      end
    end
end         