class CreateTitulos < ActiveRecord::Migration[5.0]
  def change
    create_table :titulos do |t|
      t.boolean :virtual
      t.datetime :fecha

      t.timestamps
    end
  end
end
