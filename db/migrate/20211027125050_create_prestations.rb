class CreatePrestations < ActiveRecord::Migration[5.2]
  def change
    create_table :prestations do |t|
      t.string :name_prest
      t.integer :price
      t.references :hospital, foreign_key: true

      t.timestamps
    end
  end
end
