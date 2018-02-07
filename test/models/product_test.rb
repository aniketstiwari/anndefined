# == Schema Information
#
# Table name: products
#
#  id                   :integer          not null, primary key
#  name                 :string
#  price                :decimal(12, 3)
#  active               :boolean
#  created_at           :datetime         not null
#  updated_at           :datetime         not null
#  max_allowed_quantity :integer
#  description          :text
#

require 'test_helper'

class ProductTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
