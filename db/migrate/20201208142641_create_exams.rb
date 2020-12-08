class CreateExams < ActiveRecord::Migration[6.0]
  def change
    create_table :exams do |t|
      t.string :title
      t.datetime :exam_date
      t.string :exam_location
      t.references :user, null: false, foreign_key: true
      t.integer :shared

      t.timestamps
    end
  end
end
