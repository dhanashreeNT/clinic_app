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

require 'test_helper'

class Admin::AppointmentTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
