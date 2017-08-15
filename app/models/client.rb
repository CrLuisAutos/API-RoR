class Client < ApplicationRecord
	has_and_belongs_to_many :contact
	has_and_belongs_to_many :reunion
	has_and_belongs_to_many :support
	validates :nombre, presence: true, length: { in: 1..100 }
	validates :cedula, presence: true, uniqueness: true , length: { in: 8..20 }
	validates :sector, presence: true,  length: { in: 1..100 }
	validates :telefono, presence: true, numericality: {only_integer: true}, length: { is: 8 }
	validates :pagina, presence: true, length: { maximum: 250 }, uniqueness: true
	validates :direccion, presence: true, length: { in: 1..250 }
end
