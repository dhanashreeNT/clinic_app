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

class Admin::Page < ActiveRecord::Base
  belongs_to :admin_clinic
  attr_accessible :name, :status,:admin_clinic_id
end
