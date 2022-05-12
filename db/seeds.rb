class Seed
  def self.seed_films(count = 1)
    puts "=== Seed #{count} films ==="
    count.times do
      Film.create!(title: Faker::Movie.title,
                   description: Faker::Lorem.sentence(word_count: rand(3..10)),
                   release_date: Faker::Date.between(from: '1950-01-01', to: Date.today),
                   duration: rand(20..200),
                   age_restriction: rand(0..21))
    end
  end
end

Seed.seed_films(100)
