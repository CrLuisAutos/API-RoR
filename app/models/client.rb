class Client < ApplicationRecord
	validates :nombre, presence: true, length: { in: 1..100 }
	validates :cedula, presence: true, uniqueness: true
	validates :sector, presence: true,  length: { in: 1..100 }
	validates :telefono, presence: true, numericality: { only_integer: true }
	validates :pagina, presence: true, length: { maximum: 250 }, uniqueness: true
	validates :direccion, presence: true, length: { in: 1..250 }
end
