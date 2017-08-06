class DroptitulosTable < ActiveRecord::Migration[5.0]
  def change
  	drop_table :titulos
  	create_table :reunions do |t|
      t.string :titulo
      t.datetime :fecha
      t.boolean :virtual

      t.timestamps
  	end
  end
end
