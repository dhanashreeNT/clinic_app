class CreateAdminAppointments < ActiveRecord::Migration
  def change
    create_table :admin_appointments do |t|
      t.references :admin_clinic
      t.references :admin_service
      
      t.string :first_name
      t.string :last_name
      t.text :address
      t.string :email
      t.string :contact_num
      t.string :appdatetime
      t.string :status, :default => "pending"
      t.timestamps
    end
    add_index :admin_appointments, :admin_clinic_id
    add_index :admin_appointments, :admin_service_id
    
  end
end
