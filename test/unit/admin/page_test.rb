# == Schema Information
#
# Table name: admin_pages
#
#  id              :integer          not null, primary key
#  admin_clinic_id :integer
#  name            :string(255)
#  status          :boolean
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

require 'test_helper'

class Admin::PageTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
