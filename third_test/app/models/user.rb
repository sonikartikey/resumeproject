class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
            has_one :education
            has_one :skill
            has_one :award
            has_one :experience
            has_one :about
            has_one :interest
end
