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
RSpec.describe 'prestation management function', type: :system do
    include CarrierWave::Test::Matchers
    describe 'List display function' do
        let!(:user) { FactoryBot.create(:user) }
        let!(:second_user) { FactoryBot.create(:second_user) }
        
        context 'When transitioning to the list screen' do
            it 'All prestation is listed on the page' do  
                login()
                prestation = FactoryBot.create(:prestation, hospital_id: 1, name_prest: "piqure", price: 12000)
                visit prestations_path
                expect(page).to have_content 'Chabla Hospital'
                expect(page).to have_content 'Benin'
            end
        end
        context 'When transitioned to prestations details screen' do
            it 'The content of the prestation' do
                login()
                prestation = FactoryBot.create(:prestation, hospital_id: 1, name_prest: "piqure", price: 12000)
                visit prestation_path(prestation.id)
                expect(page).to have_content 'prestation'
            end
        end
    end
  
end