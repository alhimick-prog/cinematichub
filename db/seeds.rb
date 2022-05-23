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

  def self.add_images_to_films
    puts "=== Seed main images and 0-5 additional images for films ==="
    Film.all.each do |film|
      film.main_image.attach(io: File.open((__dir__ + "/../custom_storage/film_img_#{film.id % 10}.png").to_s), filename: "film_img_#{film.id % 10}.png")
      rand(0..5).times do
        image_numb = rand(0..4)
        film.images.attach(io: File.open((__dir__ + "/../app/assets/images/default_image#{image_numb}.png").to_s), filename: "default_image#{image_numb}.png")
      end
    end
  end
end

Seed.seed_films(100)
Seed.add_images_to_films
