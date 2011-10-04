require 'spec_helper'

describe RequestsController do
  render_views

  describe "GET 'home'" do
    it "should be successful" do
      get 'home'
      response.should be_success
    end
  end

describe "GET 'hello'" do
    it "should be successful" do
      get 'hello'
      response.should be_success
    end
    
    it "should have the right title" do
      get 'hello'
      response.should have_selector("title", :content => "Netduino | Hello")
    end
  end

  describe "GET 'led'" do
    it "should be successful" do
      get 'led'
      response.should be_success
    end
  end

end
