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

class Admin::Service < ActiveRecord::Base
  belongs_to :admin_clinics
  attr_accessible :description, :name, :servimage, :admin_clinic_id
  has_attached_file :servimage, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png"
  validates_attachment_content_type :servimage, :content_type => /\Aimage\/.*\Z/
end
