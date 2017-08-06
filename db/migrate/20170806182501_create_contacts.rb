class CreateContacts < ActiveRecord::Migration[5.0]
  def change
    create_table :contacts do |t|
      t.string :nombre
      t.string :apellido
      t.string :email
      t.integer :telefono
      t.string :puesto
      t.timestamps
    end
  end
end
