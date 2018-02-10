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

class Product < ApplicationRecord
	has_many :order_items, dependent: :destroy
	has_many :images, dependent: :destroy
    accepts_nested_attributes_for :images, allow_destroy: true

  default_scope { where(active: true) }
end
