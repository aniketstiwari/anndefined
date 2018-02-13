# == Schema Information
#
# Table name: testimonials
#
#  id         :integer          not null, primary key
#  name       :string
#  email      :string
#  message    :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Testimonial < ApplicationRecord
end
