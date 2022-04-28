# == Schema Information
#
# Table name: films
#
#  id              :bigint           not null, primary key
#  title           :string           not null
#  description     :text
#  release_date    :date             default(Thu, 01 Jan 1970), not null
#  duration        :integer          not null
#  age_restriction :integer          default(0), not null
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#
class Film < ApplicationRecord
  validates :title, presence: true
  validates :description, presence: true
  validates :release_date, timeliness: { on_or_after: '01.01.1895', on_or_before: Time.zone.today, type: :date }
  validates :duration,
            presence: true,
            numericality: { only_integer: true, greater_than_or_equal_to: 3 }
  validates :age_restriction,
            presence: true,
            numericality: { only_integer: true, greater_than_or_equal_to: 0, less_than_or_equal_to: 21 }
end
