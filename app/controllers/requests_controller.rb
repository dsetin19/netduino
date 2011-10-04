class RequestsController < ApplicationController
  def home
    @title = "Home"
  end
  def hello
#    uri = URI.parse("http://try.yaler.net/gsiot-G2KZ-G3TH/hello")
    require "net/http"
    require "open-uri"

    @title = "Hello"
    response = Net::HTTP.get_response(URI.parse("http://try.yaler.net/gsiot-G2KZ-G3TH/hello"))
    @code = response.code
    @body = response.body
  end
  
  def led
  end

end
