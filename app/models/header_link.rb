# == Schema Information
#
# Table name: header_links
#
#  id         :integer          not null, primary key
#  title      :string
#  status     :boolean
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class HeaderLink < ApplicationRecord
end
