
class HomeController < ApplicationController

  def index
    #render plain: "Hello World From Rails  7"

    #render html: "<h1>Hello World From Rails 7 </h1>".html_safe

    message="<h1>Hello World From Rails 7 </h1>"
    message+="<h2>Hello World From Rails 7 </h2>"
    message+="<h3>Hello World From Rails 7 </h3>"
    message+="<h4>Hello World From Rails 7 </h4>"
    message+="<h5>Hello World From Rails 7 </h5>"
    message+="<h6>Hello World From Rails 7 </h6>"

    render html: message.html_safe
  end

  def getquerystringvalues
    message=""
    if params[:message]
      message+="<h1>Message is : " + params[:message] + "</h1>"
    else
      message+="<h1>You havent supplied any value for message..</h1>"
    end

    if params[:country]
      message+="<h1>country is : " + params[:country] + "</h1>"
    else
      message+="<h1>You havent supplied any value for country..</h1>"
    end

    message += "<h1>Controller name is : " + params[:controller] + "</h1>"
    message += "<h1>Action name is : " + params[:action] + "</h1>"

    render html: message.html_safe

  end

  def passdatatoviews
    @message="<h1>Hello World From Rails 7 </h1>"
    @message+="<h2>Hello World From Rails 7 </h2>"
    @message+="<h3>Hello World From Rails 7 </h3>"
    @message+="<h4>Hello World From Rails 7 </h4>"
    @message+="<h5>Hello World From Rails 7 </h5>"
    @message+="<h6>Hello World From Rails 7 </h6>"
  end

  def showdatetimeinfo
    @currenttime=DateTime.now


  end

  def conditionalrendering
    @data={
      'name':'Jimmy Anderson',
      'isVisible':true,
      'loggedIn':false,
      'countryCode': 'US',
      'workExperience':45,
      'stateCode':nil

    }
  end

  def loopthrougharrays
    @Products = []
    #console
    #debugger
    fnum=10
    snum=5
    add=fnum+snum
    subtract=fnum-snum
    multiply=fnum*snum
    division=fnum/snum



    #debugger
    @Products.push( {'productID':1,'productName':"AMD Ryzen 3990",'quantity':100,'unitsInStock':50,'disContinued':'False','cost':3000})
    #debugger
    @Products.push( {'productID':2,'productName':"AMD Ryzen 3980",'quantity':100,'unitsInStock':50,'disContinued':'False','cost':4000})
    #debugger
    @Products.push( {'productID':3,'productName':"AMD Ryzen 3970",'quantity':100,'unitsInStock':50,'disContinued':'False','cost':5000})

    @Products.push( {'productID':4,'productName':"AMD Ryzen 3960",'quantity':100,'unitsInStock':50,'disContinued':'False','cost':6000})
    @Products.push( {'productID':5,'productName':"AMD Ryzen 3950",'quantity':100,'unitsInStock':50,'disContinued':'False','cost':7000})
    @Products.push( {'productID':6,'productName':"AMD Ryzen 3940",'quantity':100,'unitsInStock':50,'disContinued':'True','cost':8000})
    #debugger
    @Products.push( {'productID':7,'productName':"AMD Ryzen 3930",'quantity':100,'unitsInStock':50,'disContinued':'True','cost':9000})
    @Products.push( {'productID':8,'productName':"amd Ryzen 3920",'quantity':100,'unitsInStock':50,'disContinued':'True','cost':10000})
  end
















  def LoadUsers()
    base_url = "https://fakestoreapi.com/users"
    @users=CallRestAPI(base_url)
  end

  def CallRestAPI(base_url)
    response=HTTParty.get(base_url)
    return response.success? ? response : []
  end

  def LoadUsers2()
    base_url = "https://fakestoreapi.com/users"
    @image = 'https://i.pravatar.cc';
    @users=CallRestAPI(base_url)
  end


  def ShowUserDetails
    redirect_to LoadUserDetails_path(1)
  end

  def LoadUserDetails()
    id =params[:id].to_i

    if(id < 1 || id > 10)
			redirect_to LoadUserDetails_path(1)
			return
		end

    response = HTTParty.get("https://fakestoreapi.com/users/#{id}")
	    if response.success?
	    	@user = response
		  end
  end

end
