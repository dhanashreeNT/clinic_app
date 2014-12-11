# == Schema Information
#
# Table name: admin_services
#
#  id                     :integer          not null, primary key
#  admin_clinic_id        :integer
#  name                   :string(255)
#  description            :text
#  servimage_file_name    :string(255)
#  servimage_content_type :string(255)
#  servimage_file_size    :integer
#  servimage_updated_at   :datetime
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#

require 'test_helper'

class Admin::ServiceTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
