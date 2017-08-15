class Reunion < ApplicationRecord
	has_one :client
	has_one :user
	validates :clients_id, presence: true, numericality: {only_integer: true}
	validates :users_id, numericality: {only_integer: true}
	validates :titulo, presence: true,  length: { in: 1..100 }
end
