class CreateAdminPages < ActiveRecord::Migration
  def change
    create_table :admin_pages do |t|
      t.references :admin_clinic
      t.string :name
      t.boolean :status

      t.timestamps
    end
    add_index :admin_pages, :admin_clinic_id
  end
end
