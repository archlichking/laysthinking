require 'spec_helper'

describe PagesController do
  render_views

  before(:each) do
    @basic_title = "Lay's thinking"
  end
  
  describe "GET 'home'" do
    it "should be successful" do
      get 'home'
      response.should be_success
    end
  end

  describe "GET 'contact'" do
    it "should be successful" do
      get 'contact'
      response.should be_success
    end
  end
  
  describe "GET 'about'" do
    it "should be successful" do
      get 'about'
      response.should be_success
      response.should have_selector("title", :content => @basic_title + " about")
    end
  end
  describe "GET 'home'" do
    it "should be successful" do
      get 'home'
      response.should be_success
      response.should have_selector("title", :content => @basic_title + " home")
    end
  end

  describe "GET 'contact'" do
    it "should be successful" do
      get 'contact'
      response.should be_success
      response.should have_selector("title", :content => @basic_title + " contact")
    end
  end

end
