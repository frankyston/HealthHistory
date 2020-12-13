class AddToTitleToTreatment < ActiveRecord::Migration[6.0]
  def change
    add_column :treatments, :title, :string
  end
end
