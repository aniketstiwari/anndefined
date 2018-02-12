# == Schema Information
#
# Table name: slider_images
#
#  id         :integer          not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class SliderImage < ApplicationRecord
	mount_uploader :name, ImageUploader
end
