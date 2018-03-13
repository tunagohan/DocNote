require 'rails_helper'

RSpec.describe User, type: :model do

  it 'is valid with a mail and account' do
    user = User.new(
      username: 'fizzbazz',
      email: 'foo@example.com',
      password: 'hogehoge',
      password_confirmation: 'hogehoge'
    )
    expect(user).to be_valid
  end

  it 'is invalid without a password' do
    user = User.new(password: nil)
    user.valid?
    expect(user.errors[:password]).to include("can't be blank")
  end
end