class CreateConsultations < ActiveRecord::Migration[6.0]
  def change
    create_table :consultations do |t|
      t.string :title
      t.string :name_of_professional
      t.datetime :consultation_date
      t.references :user, null: false, foreign_key: true
      t.integer :shared_with

      t.timestamps
    end
  end
end
