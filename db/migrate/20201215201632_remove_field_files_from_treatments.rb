class RemoveFieldFilesFromTreatments < ActiveRecord::Migration[6.0]
  def change
    remove_column :treatments, :files, :string
  end
end
