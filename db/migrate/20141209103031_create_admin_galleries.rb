class CreateAdminGalleries < ActiveRecord::Migration
  def change
    create_table :admin_galleries do |t|
      t.references :admin_clinic
      t.attachment :galleryimage
      t.string :description

      t.timestamps
    end
    add_index :admin_galleries, :admin_clinic_id
  end
end
