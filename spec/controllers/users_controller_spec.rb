require 'spec_helper'

describe UsersController do
  render_views

  before(:each) do
    @title = "Lay's thinking"
  end

  describe "GET 'new'" do
    it "should be successful" do
      get 'new'
      response.should be_success
    end

    it "should have right title" do
      get 'new'
      response.should have_selector("title", :content => @title + " sign up")
    end
  end
end
