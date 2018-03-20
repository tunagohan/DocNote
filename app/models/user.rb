class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  has_many :articles

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable,
         :confirmable, :timeoutable

  validates :username,
            uniqueness: { case_sensitive: :false },
            length: { minimum: 4, maximum: 20 }
end
