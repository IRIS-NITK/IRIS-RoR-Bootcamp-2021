class AboutPageController < ApplicationController

    def aboutPage
        render plain: "Prafful Gupta"
    end

    def aboutForm
        render plain: "Form Page"
    end

    def aboutJson
        render plain: "Json Page"
    end
end
