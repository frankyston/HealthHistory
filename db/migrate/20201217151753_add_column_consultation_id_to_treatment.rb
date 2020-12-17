class AddColumnConsultationIdToTreatment < ActiveRecord::Migration[6.0]
  def change
    add_reference :treatments, :consultation, null: false, foreign_key: true
    remove_column :treatments, :user_id, :integer
  end
end
