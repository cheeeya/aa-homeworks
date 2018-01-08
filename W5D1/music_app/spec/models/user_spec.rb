require 'rails_helper'

RSpec.describe User, type: :model do

  describe 'validations' do
    it { should validate_presence_of(:email) }
    it { should validate_presence_of(:password_digest) }
    it { should validate_presence_of(:session_token) }
    it { should validate_length_of(:password).is_at_least(6) }
  end

  describe 'class methods' do
    describe '::find_by_credentials' do
      it 'should return the correct user'do
        user = User.create(email: "sc@gmail.com", password: 'password')
        find_user = User.find_by_credentials('sc@gmail.com', 'password')
        expect(find_user).to eq(user)
      end

      it 'should return nil for incorrect credentials' do
        expect(User.find_by_credentials('sc@gmail.com', 'wrongpassword')).to eq(nil)
      end
    end
  end

  describe 'instance methods' do
    describe 'is_password?' do
      it 'should return true for correct password' do
        user = User.new(email: "test@test.com", password: "password")
        expect(user.is_password?("password")).to be true
      end
      it 'Should return false for wrong password' do
        user = User.new(email: "test@test.com", password: "password")
        expect(user.is_password?("wrong_password")).to be false
      end
    end

    describe 'reset_session_token!' do
      it 'should reset session token' do
        user = User.create(email: "test2@test.com", password: "password")
        token = user.session_token
        user.reset_session_token!
        expect(user.session_token).not_to eq(token)
      end
    end
  end


end
