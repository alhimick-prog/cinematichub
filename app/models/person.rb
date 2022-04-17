# == Schema Information
#
# Table name: people
#
#  id         :bigint           not null, primary key
#  first_name :string           not null
#  surname    :string           not null
#  patronymic :string
#  birthday   :date
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Person < ApplicationRecord
end
