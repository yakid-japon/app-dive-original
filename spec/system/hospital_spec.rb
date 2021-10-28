require 'rails_helper'
def login 
    visit new_user_session_path
    fill_in 'user[email]', with: "from@example.com"
    fill_in 'user[password]', with: "password"
    click_button I18n.t('views.messages.signIn')
end
def second_login 
    visit new_user_session_path
    fill_in 'user[email]', with: "admin@example.com"
    fill_in 'user[password]', with: "password"
    click_button I18n.t('views.messages.signIn')
end
RSpec.describe 'hospital management function', type: :system do
    include CarrierWave::Test::Matchers
    describe 'List display function' do
        let!(:user) { FactoryBot.create(:user) }
        let!(:second_user) { FactoryBot.create(:second_user) }
        
        context 'When transitioning to the list screen' do
            it 'All hospitals is listed on the page' do  
                login()
                hospital = FactoryBot.create(:hospital, hospi_name: 'Chabla Hospital', hospi_adresse: "Benin")
                visit hospitals_path
                expect(page).to have_content 'Chabla Hospital'
                expect(page).to have_content 'Benin'
            end
        end
        context 'When transitioned to hospitals details screen' do
            it 'The content of the hospital' do
                login()
                hospital = FactoryBot.create(:hospital, hospi_name: 'hospital', hospi_adresse: "Benin")
                visit hospital_path(hospital.id)
                expect(page).to have_content 'hospital'
            end
        end
    end
  
end