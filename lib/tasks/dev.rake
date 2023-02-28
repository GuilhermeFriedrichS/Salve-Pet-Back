namespace :dev do
  desc "TODO"
  task setup: :environment do
    %x(rails db:drop db:create db:migrate)  
    
    puts "Registrando Posts..."

    10.times do 
      Post.create!(
        title: Faker::Lorem.sentence(word_count: 3, supplemental: true, random_words_to_add: 4),
        description: Faker::Lorem.sentence(word_count: 50, supplemental: false, random_words_to_add: 4),
        cep: Faker::Address.postcode,
        city: Faker::Address.city,
        street: Faker::Address.street_name,
        district: Faker::Address.community
      )
    end

    puts "Posts registrados com sucesso!"
  end

end
