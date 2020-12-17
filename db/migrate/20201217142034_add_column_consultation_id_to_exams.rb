class AddColumnConsultationIdToExams < ActiveRecord::Migration[6.0]
  def change
    add_reference :exams, :consultation, null: false, foreign_key: true
    remove_column :exams, :user_id, :integer
  end
end
