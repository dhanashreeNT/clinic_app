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
#  appdatetime      :datetime
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#

class Admin::Appointment < ActiveRecord::Base
  belongs_to :admin_clinic
  belongs_to :admin_service
  
  attr_accessible :address, :contact_num, :email, :first_name, :last_name, :appdatetime, :admin_service_id, :admin_clinic_id
end
