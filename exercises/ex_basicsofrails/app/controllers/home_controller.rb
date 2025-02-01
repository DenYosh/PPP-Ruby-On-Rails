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

    def conditionalRendering
        @data =  {
            name: "Yoshi Cooremans",
            age: 20,
            isVisible: true,
            loggedIn: false,
            countryCode: "BE",
            workExperience: 2,
            stateCode: nil

        }
    end

    def loopThroughArrays
        @Products = []
        console
        @Products.push({ productId: 1, productName: "Product 1", quantity: 100, unitsInStock: 50, disContinued: false, cost: 3000 })
        @Products.push({ productId: 2, productName: "Product 2", quantity: 200, unitsInStock: 100, disContinued: true, cost: 4000 })
        @Products.push({ productId: 3, productName: "Product 3", quantity: 300, unitsInStock: 150, disContinued: false, cost: 5000 })
        @Products.push({ productId: 4, productName: "Product 4", quantity: 400, unitsInStock: 200, disContinued: true, cost: 6000 })
        @Products.push({ productId: 5, productName: "Product 5", quantity: 500, unitsInStock: 250, disContinued: false, cost: 7000 })
    end
end
