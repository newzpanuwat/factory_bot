require 'rails_helper'

RSpec.describe User, :type => :model do
    describe 'testing validation test' do
        it { is_expected.to validate_presence_of(:name) }       
        it { is_expected.to validate_presence_of(:email) }       
        it { is_expected.to validate_presence_of(:password) }  
    end
    
    describe 'validation tests' do
        let(:user) { build(:user) }
       
        it 'ensures name presence' do
            user.name = nil
            expect(user.save).to eq(false)
        end
        it 'ensures password presence' do
            user.password = nil
            expect(user.save).to eq(false)
        end
        it 'ensures email presence' do
            user.email = nil
            expect(user.save).to eq(false)
        end
    end
end