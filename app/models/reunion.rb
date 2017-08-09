class Reunion < ApplicationRecord
	belongs_to :user
	belongs_to :client
	validates :fecha, presence: true
	validates :titulo, presence: true,  length: { in: 1..100 }
end
