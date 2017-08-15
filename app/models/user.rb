class User < ApplicationRecord
	has_and_belongs_to_many :reunion
	has_and_belongs_to_many :support
	validates :nombre, presence: true,  length: { in: 1..30 }
	validates :apellido, presence: true,  length: { in: 1..30 }
	validates :password_digest, presence: true,   length: { is: 8 }
	validates :username, presence: true,  length: { in: 1..250 }, uniqueness: true
end
