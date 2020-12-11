class CreateAppointments < ActiveRecord::Migration[6.0]
  def change
    create_table :appointments do |t|
      t.integer :patient_id, null: false
      t.integer :physician_id, null: false
      t.integer :status, default: 0, null: false

      t.timestamps
    end

    add_index :appointments, [:patient_id, :physician_id], unique: true

  end
end
