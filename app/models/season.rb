# == Schema Information
#
# Table name: seasons
#
#  id           :bigint           not null, primary key
#  film_id      :bigint           not null
#  number       :integer
#  title        :string           not null
#  description  :text
#  release_date :date             not null
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#
class Season < ApplicationRecord
end
