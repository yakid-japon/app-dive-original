RSpec.describe Prestation, type: :model do
    
    describe 'Test for Prestation model' do
        let!(:user) { FactoryBot.create(:user) }
        context 'Create prestation' do
            it "It's hard to Validation" do
                prestation = Prestation.new(hospital_id: '', name_prest: '', price: '')
                expect(prestation).not_to be_valid
            end
        end
        context 'Create Prestation' do
            it 'Validation is caught. Here description is not set' do
                hospital = Prestation.new(hospital_id: 1, name_prest: '', price: '')
                expect(prestation).not_to be_valid
            end
        end

        context 'Create Prestation all informations' do
            it 'Validation passes' do
                prestation = FactoryBot.create(:prestation, name_prest: 'operation', price: 150000)
                expect(prestation).to be_valid
            end
        end
    end 
end