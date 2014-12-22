# == Schema Information
#
# Table name: admin_appointments
#
#  id               :integer          not null, primary key
#  admin_clinic_id  :integer
#  admin_service_id :integer
#  first_name       :string(255)
#  last_name        :string(255)
#  address          :text
#  email            :string(255)
#  contact_num      :string(255)
#  appdatetime      :string(255)
#  status           :string(255)
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#

class Admin::Appointment < ActiveRecord::Base
  belongs_to :admin_clinic
  belongs_to :admin_service
  
  attr_accessible :address, :contact_num, :email, :first_name, :last_name, :appdatetime, :admin_service_id, :admin_clinic_id, :status

  def approved?
  	self.status == "approved"
  end

  def faked?
  	self.status == "faked"
  end

  def pending?
  	self.status == "pending"
  end

  def set_status(status)
    self.update_attributes(:status => status)
  end
end
