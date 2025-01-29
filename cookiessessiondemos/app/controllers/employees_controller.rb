class EmployeesController < ApplicationController

  def index

    #Plain Text, Signed, Encrypted

    cookies[:emp_name] = "Hey! I am a Plain Text Cookie"

    cookies[:exp_cookies] = { value: "Anthony Joshua", expires: Time.now + 2.minutes }

    cookies.signed[:user_id] = "Hey! I can be decoded, but cant be modified as I am cryptographically signed!"

    cookies.encrypted[:credit_card] = 'Hey! I cant be decoded nor can be modified as I am authenticated at the time of decryption'


  end

  def home


  end

  def sessiondemo
    session[:emp_id] = 123
    session[:salary] = 16775
    session[:is_active] = true
    session[:emp_name] = 'Chad Mendis'
  end

  def readsessiondata
    #session.delete(:emp_id)
    #session.clear
    #reset_session
  end

end

#eyJfcmFpbHMiOnsibWVzc2FnZSI6IklraGxlU0VnU1NCallXNGdZbVVnWkdWamIyUmxaQ3dnWW5WMElHTmhiblFnWW1VZ2JXOWthV1pwWldRZ1lYTWdTU0JoYlNCamNubHdkRzluY21Gd2FHbGpZV3hzZVNCemFXZHVaV1FoSWc9PSIsImV4cCI6bnVsbCwicHVyIjoiY29va2llLnVzZXJfaWQifX0:"--a775c11a924da6e4a6fe8c4e7827eb23bcfb61e9"
#0:"g1kN77UTZJu2DHIIfLkQmU5sbqtbDbMjntaluaOs5EsgaBa+onlVqDcatZGepjF/HcEZLQY+ETBenXNdS7ZCtbVSDLqRn0X/8e0DPEcLu2GC6pu3QF2RMBWubH2xjcNBEUo8ageWUpK4JAATl4rKcT/KxE+WyV4rrvdiAv+B8x2TWxro8b094IS7pIuVhrNYM9ml3ueYTAXEt1DKrmni/cd+2inHeuR4Ssdn8zkvcqQAUNtT99K8xq3Q5Q"
#2:"--e8gHTGjXsMoP+AP/--uoLbkbZ7DBPe5orhy8c75w"
