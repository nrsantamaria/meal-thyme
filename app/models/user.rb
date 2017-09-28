class User < ApplicationRecord

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :meals

  validates :username, :email, :password, :presence => true
  validates :calories, :protein, :fat, :carbohydrates, presence: true, unless: :admin?


  before_save do |user|
    if ((user.protein + user.fat + user.carbohydrates) >= 100)
      user.errors.add(:message, "Your macros should be less than 100.")
    end
  end
end
