class HomeController < ApplicationController

    def index
        # render plain: "Hello World From Rails 8, Yoshi Cooremans!"

        # render html: "<h1>Hello World From Rails 8, Yoshi Cooremans!</h1>".html_safe

        message = "<h1>Hello World From Rails 8, Yoshi Cooremans!</h1>"
        message += "<h2>Hello World From Rails 8, Yoshi Cooremans!</h2>"
        message += "<h3>Hello World From Rails 8, Yoshi Cooremans!</h3>"
        message += "<h4>Hello World From Rails 8, Yoshi Cooremans!</h4>"
        message += "<h5>Hello World From Rails 8, Yoshi Cooremans!</h5>"
        message += "<h6>Hello World From Rails 8, Yoshi Cooremans!</h6>"

        render html: message.html_safe
    end

    def getQueryStringValues
        message = ""
        
        if params[:message]
            message += "<h1>Message is: #{params[:message]}</h1>"
            else
                message += "<h1>No message received</h1>"
        end

        if params[:country]
            message += "<h1>Country is: #{params[:country]}</h1>"
        else
            message += "<h1>No country received</h1>"
        end

        message += "<h1>Controller name is: #{params[:controller]}</h1>"
        message += "<h1>Action name is: #{params[:action]}</h1>"

        render html: message.html_safe
    end

    def passDataToViews
        @message = "<h1>Hello World From Rails 8, Yoshi Cooremans!</h1>"
        @message += "<h2>Hello World From Rails 8, Yoshi Cooremans!</h2>"
        @message += "<h3>Hello World From Rails 8, Yoshi Cooremans!</h3>"
        @message += "<h4>Hello World From Rails 8, Yoshi Cooremans!</h4>"
        @message += "<h5>Hello World From Rails 8, Yoshi Cooremans!</h5>"
        @message += "<h6>Hello World From Rails 8, Yoshi Cooremans!</h6>"
    end

    def showDateTimeInfo
        @currenttime = DateTime.now
    end
end
