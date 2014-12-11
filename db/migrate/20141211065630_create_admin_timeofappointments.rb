class CreateAdminTimeofappointments < ActiveRecord::Migration
  def change
    create_table :admin_timeofappointments do |t|
      t.references :admin_clinic
      t.string :toa

      t.timestamps
    end
    add_index :admin_timeofappointments, :admin_clinic_id
  end
end
