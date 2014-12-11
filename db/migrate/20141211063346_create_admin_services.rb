class CreateAdminServices < ActiveRecord::Migration
  def change
    create_table :admin_services do |t|
      t.references :admin_clinic
      t.string :name
      t.text :description
      t.attachment :servimage

      t.timestamps
    end
    add_index :admin_services, :admin_clinic_id
  end
end
