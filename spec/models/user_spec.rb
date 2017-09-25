require 'rails_helper'

describe User do
  it { should validate_presence_of :username }
  it { should validate_presence_of :email }
  it { should validate_presence_of :password }
  it { should have_many :meals }
  it ("confirm macros is less than 100") do
    user1 = User.create({:username => 'jim', :email => 'jim@email.com', :password => '123456', :dietary_restrictions => 'None', :calories => 2000, :protein => 25, :fat => 25, :carbohydrates => 55 })
    expect(user1.errors.any?).to(eq(true))
  end
end
