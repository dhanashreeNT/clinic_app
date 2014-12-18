# == Schema Information
#
# Table name: admin_workhours
#
#  id         :integer          not null, primary key
#  day        :string(255)
#  start_time :string(255)
#  end_time   :string(255)
#  weekly_off :boolean          default(FALSE)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'test_helper'

class Admin::WorkhourTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
