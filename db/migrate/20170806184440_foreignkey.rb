class Foreignkey < ActiveRecord::Migration[5.0]
  def change
  	add_reference :contacts, :clients, :index => true
  	add_reference :reunions, :clients, :index => true
  	add_reference :reunions, :users, :index => true
  	add_reference :supports, :users, :index => true
  	add_reference :supports, :clients, :index => true

  end
end
