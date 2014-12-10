# == Schema Information
#
# Table name: admin_doctors
#
#  id                       :integer          not null, primary key
#  admin_clinic_id          :integer
#  name                     :string(255)
#  about_you                :text
#  education                :string(255)
#  profile_pic_file_name    :string(255)
#  profile_pic_content_type :string(255)
#  profile_pic_file_size    :integer
#  profile_pic_updated_at   :datetime
#  created_at               :datetime         not null
#  updated_at               :datetime         not null
#

require 'test_helper'

class Admin::DoctorTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
