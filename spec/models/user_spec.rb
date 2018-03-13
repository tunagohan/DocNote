require 'rails_helper'

RSpec.describe User, type: :model do

  it 'is valid with a username, email, password and password_confirmation' do
    user = FactoryBot.build(:user)
    expect(user).to be_valid
  end

  it 'is invalid without a password' do
    user = FactoryBot.build(:user, password: nil)
    user.valid?
    expect(user.errors[:password]).to include("can't be blank")
  end
end