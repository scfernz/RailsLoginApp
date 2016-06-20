require 'rails_helper'

RSpec.feature "RegistrationPages", type: :feature do
  context "I am on the registration page" do
    Steps 'Registering a user' do
      Given 'I am on the registration page' do
        visit '/registration/register'
      end
      Then 'I can see a registration form' do
        expect(page).to have_content('Registration page')
        fill_in('user_id', :with => 'bananastandarson')
        fill_in('password', :with => 'qwerty123#')
        fill_in('given_name', :with => 'Mina')
        fill_in('family_name', :with => 'C')
        fill_in('street_addy', :with => '123 Sesame St')
        fill_in('city', :with => 'Happyland')
        fill_in('state', :with => 'CA')
        fill_in('country', :with => 'USA')
        fill_in('postal', :with => '92102')
        fill_in('home_phone', :with => '1234567890')
        fill_in('cell_phone', :with => '5551234567')
        fill_in('work_phone', :with => '1234445555')
        fill_in('email_addy', :with => 'mina@sesame.com')
      end
    end
  end
  context "I am on the registration page" do
    Steps 'Registering a user' do
      Given 'I am on the registration page' do
        visit '/registration/register'
      end
      And 'I can see a registration form' do
        fill_in('user_id', :with => 'bananastandarson')
        fill_in('password', :with => 'qwerty123#')
        fill_in('given_name', :with => 'Mina')
        fill_in('family_name', :with => 'C')
        fill_in('street_addy', :with => '123 Sesame St')
        fill_in('city', :with => 'Happyland')
        fill_in('state', :with => 'CA')
        fill_in('country', :with => 'USA')
        fill_in('postal', :with => '92102')
        fill_in('home_phone', :with => '1234567890')
        fill_in('cell_phone', :with => '5551234567')
        fill_in('work_phone', :with => '1234445555')
        fill_in('email_addy', :with => 'mina@sesame.com')
        click_button('Register')
      end
      Then 'I can be taken to a confirmation page' do
        expect(page).to have_content('Thank you for registering, bananastandarson')
      end
    end
  end
  context "I am on the login page and have registered" do
    Steps 'Logging in' do
      Given 'I am a registered user' do
        visit '/registration/register'
        fill_in('user_id', :with => 'bananastandarson')
        fill_in('password', :with => 'qwerty123#')
        fill_in('given_name', :with => 'Mina')
        fill_in('family_name', :with => 'C')
        fill_in('street_addy', :with => '123 Sesame St')
        fill_in('city', :with => 'Happyland')
        fill_in('state', :with => 'CA')
        fill_in('country', :with => 'USA')
        fill_in('postal', :with => '92102')
        fill_in('home_phone', :with => '1234567890')
        fill_in('cell_phone', :with => '5551234567')
        fill_in('work_phone', :with => '1234445555')
        fill_in('email_addy', :with => 'mina@sesame.com')
        click_button('Register')
      end
      And 'I can see a login form' do
        fill_in('user_id', :with => 'bananastandarson')
        fill_in('password', :with => 'qwerty123#')
        click_button('Login')
      end
      Then 'I can be taken to a confirmation page' do
        expect(page).to have_content('Welcome back, bananastandarson!')
      end
    end
  end
end
