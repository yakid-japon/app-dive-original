require 'rails_helper'

RSpec.describe Hospital, type: :model do
    
    describe 'Test for Hospital model' do
        let!(:user) { FactoryBot.create(:user) }
        context 'Create hospital without name and adresse' do
            it "It's hard to Validation" do
                hospital = Hospital.new(hospi_name: '', hospi_adresse: '')
                expect(hospital).not_to be_valid
            end
        end
        context 'Create Hospital without adresse' do
            it 'Validation is caught. Here description is not set' do
                hospital = Hospital.new(hospi_name: "Chabla 1", hospi_adresse: "")
                expect(hospital).not_to be_valid
            end
        end

        context 'Create Hospital all informations' do
            it 'Validation passes' do
                hospital = FactoryBot.create(:hospital, hospi_name: 'Chabla Health', hospi_adresse: "Benin 2")
                expect(hospital).to be_valid
            end
        end
    end 
end