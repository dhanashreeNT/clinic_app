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

require 'test_helper'

class Admin::TimeofappointmentTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
