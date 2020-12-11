class CreateTreatments < ActiveRecord::Migration[6.0]
  def change
    create_table :treatments do |t|
      t.datetime :treatment_date
      t.string :treatment_location
      t.text :files
      t.boolean :shared
      t.references :consultations, null: false, foreign_key: true

      t.timestamps
    end
  end
end
