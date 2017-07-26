require 'rails_helper'

describe Meal do
  it { should have_many :recipes }
end
