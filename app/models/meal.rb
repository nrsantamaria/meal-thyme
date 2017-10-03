class Meal < ActiveRecord::Base
  belongs_to :user
  belongs_to :recipe

  delegate :title, to: :meal
end
