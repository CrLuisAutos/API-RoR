class User < ApplicationRecord
	has_many :reunion
	has_many :support
	validates :nombre, presence: true,  length: { in: 1..30 }
	validates :apellido, presence: true,  length: { in: 1..30 }
	validates :password, presence: true,   length: { is: 8 }
	validates :username, presence: true,  length: { in: 1..250 }, uniqueness: true
end
