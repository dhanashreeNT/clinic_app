class CreateAdminClinics < ActiveRecord::Migration
  def change
    create_table :admin_clinics do |t|
      t.string :name
      t.string :logo
      t.string :city
      t.string :contact_num
      t.text :address
      t.string :email

      t.timestamps
    end
  end
end
