require 'spec_helper'

describe "Static pages" do

  let(:base_title){"Ruby on Rails Tutorial Sample App"}
  subject { page }

  shared_examples_for "all static pages" do
    it { should have_content(heading) }
    it { should have_title(full_title(page_title)) }
  end

  describe "Home page" do
  before { visit root_path}
  let(:heading){'Sample App'}
  let(:page_title){''}

     #it {should have_content('Sample App')}
     it_should_behave_like "all static pages"
     it {should have_title(full_title(''))}
     it { should_not have_title('| Home') }
    #it "should have the content 'Sample App'" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      #visit root_path
      #expect(page).to have_content('Sample App')
    #end


    #it "should have the base title " do
      #visit root_path
      #expect(page).to have_title("#{base_title}")
    #end


     #it "should not have a custom page title" do
       #visit root_path
       #expect(page).not_to have_title('| Home')
     #end

  end

   describe "Help page" do
     before { visit help_path}
     it { should have_content('Help')}
     it {should have_title(full_title('Help'))}
    # it "should have the content 'Help'" do
     #   visit help_path
     #   expect(page).to have_content('Help')
    # end

    # it "should have the title 'Help'" do
    #   visit help_path
     #  expect(page).to have_title("#{base_title} | Help")
    # end
   end

   describe "About page" do
    before { visit about_path }
     it {should have_content('About')}
     it {should have_title(full_title('About Us'))}
    # it "should have content 'About Us'" do
     #  visit about_path
     #  expect(page).to have_content('About Us')
    # end

    # it "should have the title 'About Us'" do
     #  visit about_path
     #  expect(page).to have_title("#{base_title} | About Us")
    # end
   end

    describe "Contact" do
      before { visit contact_path }
      it {should have_selector('h1', text: 'Contact')}
      it {should have_title(full_title('Contact'))}
      #it "should have content 'Contact'" do
       # visit contact_path
       # expect(page).to have_content('Contact')
     # end

    #  it "should have title 'Contact'" do
       # visit contact_path
       # expect(page).to have_title("#{base_title} | Contact")
     # end
    end


    it "should have the right links on the layout" do
      visit root_path
      click_link "About"
      expect(page).to have_title(full_title('About Us'))
      click_link "Help"
      expect(page).to have_title(full_title('Help'))
      click_link "Contact"
      expect(page).to have_title(full_title('Contact'))
      click_link "Home"
      click_link "Sign up now!"
      expect(page).to have_title(full_title('Sign up'))
      click_link "sample app"
      #expect(page).to have_title(full_title(''))
    end
end
