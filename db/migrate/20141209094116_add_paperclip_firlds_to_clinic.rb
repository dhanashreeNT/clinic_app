class AddPaperclipFirldsToClinic < ActiveRecord::Migration
  def self.up
    add_attachment :admin_clinics, :clinic_logo
  end

  def self.down
    remove_attachment :admin_clinics, :clinic_logo
  end
end
 