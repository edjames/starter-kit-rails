class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :registerable, :timeoutable, :omniauthable
  devise :database_authenticatable,
         :recoverable,
         :rememberable,
         :trackable,
         :validatable


  validates :name, presence: true

  scope :ordered, -> { order(name: :asc) }

end
