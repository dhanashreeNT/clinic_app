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

require 'test_helper'

class Admin::GalleryTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
