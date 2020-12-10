class CreateConsultations < ActiveRecord::Migration[6.0]
  def change
    create_table :consultations do |t|
      t.string :title
      t.string :name_of_professional
      t.date :consultation_date
      t.text :files
      t.references :user, null: false, foreign_key: true
      t.boolean :shared

      t.timestamps
    end
  end
end
