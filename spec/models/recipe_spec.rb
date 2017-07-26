require 'rails_helper'

describe Recipe do
  it { should have_one :meal }
end
