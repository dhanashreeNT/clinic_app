class CreateAdminDoctors < ActiveRecord::Migration
  def change
    create_table :admin_doctors do |t|
      t.references :admin_clinic
      t.string :name
      t.text :about_you
      t.string :education
      t.attachment :profile_pic

      t.timestamps
    end
    add_index :admin_doctors, :admin_clinic_id
  end
end
