# == Schema Information
#
# Table name: admin_timeofappointments
#
#  id              :integer          not null, primary key
#  admin_clinic_id :integer
#  toa             :string(255)
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

class Admin::Timeofappointment < ActiveRecord::Base
  belongs_to :admin_clinic
  attr_accessible :toa, :admin_clinic_id
end
