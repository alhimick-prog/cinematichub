# == Schema Information
#
# Table name: reviews
#
#  id         :bigint           not null, primary key
#  text       :text             not null
#  rating     :integer          not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Review < ApplicationRecord
end
