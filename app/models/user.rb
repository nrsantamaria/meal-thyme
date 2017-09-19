class User < ApplicationRecord

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :meals

  validates :username, :email, :password, :presence => true
  validates :calories, :protein, :fat, :carbohydrates, presence: true, unless: :admin?

  # validate :macros, unless: admin?
  #
  #
  # def macros
  #   if (self.protein + self.fat + self.carbohydrates >= 100)
  #     errors.add("Your macros should be less than 100.")
  #   end
  # end
end
