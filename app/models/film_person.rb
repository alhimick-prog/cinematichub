# == Schema Information
#
# Table name: film_people
#
#  id         :bigint           not null, primary key
#  film_id    :bigint           not null
#  person_id  :bigint           not null
#  role       :string           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class FilmPerson < ApplicationRecord
end
