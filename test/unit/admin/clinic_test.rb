# == Schema Information
#
# Table name: admin_clinics
#
#  id                       :integer          not null, primary key
#  name                     :string(255)
#  logo                     :string(255)
#  city                     :string(255)
#  contact_num              :string(255)
#  address                  :text
#  email                    :string(255)
#  created_at               :datetime         not null
#  updated_at               :datetime         not null
#  clinic_logo_file_name    :string(255)
#  clinic_logo_content_type :string(255)
#  clinic_logo_file_size    :integer
#  clinic_logo_updated_at   :datetime
#

require 'test_helper'

class Admin::ClinicTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
