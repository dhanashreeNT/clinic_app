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

class Admin::Workhour < ActiveRecord::Base
  attr_accessible :day, :end_time, :start_time, :weekly_off
end
