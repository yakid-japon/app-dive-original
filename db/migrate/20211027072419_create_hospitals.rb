class CreateHospitals < ActiveRecord::Migration[5.2]
  def change
    create_table :hospitals do |t|
      t.string :hospi_name
      t.string :hospi_adresse

      t.timestamps
    end
  end
end
