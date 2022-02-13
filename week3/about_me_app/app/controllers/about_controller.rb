class AboutController < ApplicationController
    
    def home
    end
    def about_form
    end
    def postpage
      @name = params[:name]
      @email=params[:email]
    end
    def json
    @par=params[:message]
      respond_to do |format|
         format.html{ redirect_to:rootpath }
        if @par==nil
         format.json{ render plain:" " ,status:400 }
         else
          format.json{render json:{ message:""+@par},status:200}
        end         
      end
    end
    def jsonpage
    end  
end         