require 'spec_helper'

describe "AuthenticationPages" do
  subject {page}
  describe "signin pages" do
    before {visit signup_path}

    it {should have_content('Sign in')}
    it {should have_title('Sign up')}
    #it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      #get authentication_pages_index_path
      #response.status.should be(200)
  end
end
