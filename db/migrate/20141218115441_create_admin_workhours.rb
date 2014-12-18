class CreateAdminWorkhours < ActiveRecord::Migration
  def change
    create_table :admin_workhours do |t|
      t.string :day
      t.string :start_time
      t.string :end_time
      t.boolean :weekly_off, :default => false

      t.timestamps
    end
  end
end
