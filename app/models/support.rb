class Support < ApplicationRecord
	has_one :client
	has_one :user
	validates :clients_id, presence: true, numericality: {only_integer: true}
	validates :users_id, presence: true, numericality: {only_integer: true}
	validates :detalle, presence: true,  length: { in: 1..200 }
	validates :titulo, presence: true,  length: { in: 1..200 }
	validates :estado, presence: true,  length: { in: 1..100 }
end
