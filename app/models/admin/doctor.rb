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

class Admin::Doctor < ActiveRecord::Base
  belongs_to :admin_clinic
  attr_accessible :about_you, :education, :name, :profile_pic, :admin_clinic_id
  has_attached_file :profile_pic, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png"
  validates_attachment_content_type :profile_pic, :content_type => /\Aimage\/.*\Z/
  validates :name,:education,:about_you, :presence => true
end
