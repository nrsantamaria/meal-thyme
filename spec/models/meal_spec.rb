require 'rails_helper'

describe Meal do
  it { should belong_to :user }
end
