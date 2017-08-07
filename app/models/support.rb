class Support < ApplicationRecord
	validates :detalle, presence: true,  length: { in: 1..200 }
	validates :titulo, presence: true,  length: { in: 1..200 }
	validates :estado, presence: true,  length: { in: 1..100 }
end
