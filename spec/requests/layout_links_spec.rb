require 'spec_helper'

describe "LayoutLinks" do
    
  it "should have a home page at '/'" do
    # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
    get "/"
    response.should have_selector('title', :content => "home")
  end
  it "should have a contact page at '/contact'" do
    # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
    get "/contact"
    response.should have_selector('title', :content => "contact")
  end
  it "should have a about page at '/about'" do
    # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
    get "/about"
    response.should have_selector('title', :content => "about")
  end
  it "should have a help page at '/help'" do
    # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
    get "/help"
    response.should have_selector('title', :content => "help")
  end
  it "should have a signup page at '/signup'" do
    # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
    get "/signup"
    response.should have_selector('title', :content => "sign up")
  end
end
