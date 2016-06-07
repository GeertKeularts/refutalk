class User < ActiveRecord::Base
  has_many :requests, class_name: :request, foreign_key: :refugee_id
  has_many :offers, class_name: :request, foreign_key: :dutchie_id
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

end
