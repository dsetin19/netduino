require 'spec_helper'

describe RequestsController do

  describe "GET 'hello'" do
    it "should be successful" do
      get 'hello'
      response.should be_success
    end
  end

end
