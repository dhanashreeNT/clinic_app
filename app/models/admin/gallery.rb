# == Schema Information
#
# Table name: admin_galleries
#
#  id                        :integer          not null, primary key
#  admin_clinic_id           :integer
#  galleryimage_file_name    :string(255)
#  galleryimage_content_type :string(255)
#  galleryimage_file_size    :integer
#  galleryimage_updated_at   :datetime
#  description               :string(255)
#  created_at                :datetime         not null
#  updated_at                :datetime         not null
#

class Admin::Gallery < ActiveRecord::Base
  belongs_to :admin_clinic
  attr_accessible :description, :galleryimage, :admin_clinic_id
  has_attached_file :galleryimage, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png"
  validates_attachment_content_type :galleryimage, :content_type => /\Aimage\/.*\Z/
end
