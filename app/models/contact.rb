class Contact < ApplicationRecord
	validates :nombre, presence: true, length: { in: 1..100 }
	validates :apellido, presence: true,  length: { in: 1..100 }
	validates :puesto, presence: true,  length: { in: 1..100 }
	validates :telefono, presence: true
end
