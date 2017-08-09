class Contact < ApplicationRecord
	belongs_to :client
	validates :nombre, presence: true, length: { in: 1..100 }
	validates :apellido, presence: true,  length: { in: 1..100 }
	validates :puesto, presence: true,  length: { in: 1..100 }
	validates :telefono, presence: true, numericality: { only_integer: true } ,length: { is: 8 }
end
