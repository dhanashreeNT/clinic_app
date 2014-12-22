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

class Admin::Clinic < ActiveRecord::Base
  attr_accessible :address, :city, :contact_num, :email, :logo, :name
  attr_accessible :clinic_logo
  has_attached_file :clinic_logo, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png"
  validates_attachment_content_type :clinic_logo, :content_type => /\Aimage\/.*\Z/
  validates :name,:address,:city, :presence => true
  has_many :admin_pages, :class_name => "Admin::Page", :foreign_key=>"admin_clinic_id"
  after_save :create_pages
  def create_pages
     self.admin_pages.create(:name => "Home",:status => true)
     self.admin_pages.create(:name => "About",:status => true)
     self.admin_pages.create(:name => "Gallery",:status => true)
     self.admin_pages.create(:name => "Services",:status => true)
     self.admin_pages.create(:name => "Appointment",:status => true)
     self.admin_pages.create(:name => "Contact Us",:status => true)
  end
end
