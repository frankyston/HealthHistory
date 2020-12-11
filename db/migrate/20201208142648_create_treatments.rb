class CreateTreatments < ActiveRecord::Migration[6.0]
  def change
    create_table :treatments do |t|
      t.datetime :treatment_date
      t.string :treatment_location
      t.string :files
      t.references :user, null: false, foreign_key: true
      t.integer :shared

      t.timestamps
    end
  end
end
