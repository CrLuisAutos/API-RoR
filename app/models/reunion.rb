class Reunion < ApplicationRecord
	validates :fecha, presence: true
	validates :titulo, presence: true,  length: { in: 1..100 }
end
