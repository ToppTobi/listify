class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
         :confirmable

validates :username, presence: true
    validates :email, presence: true, uniqueness: true
    validates :password, confirmation: true, unless: -> { password.blank? }

  def admin?
    role == 'admin'
  end

  has_paper_trail



  end


