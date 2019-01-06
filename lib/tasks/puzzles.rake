namespace :puzzles do
  desc "Seed Puzzles"
  task seed_puzzles: :environment do
    puzzles = [
      {name: 'apple', file_name: 'apple.png', default_size: 20, height: 1280, width: 1280},
      {name: 'brave', file_name: 'brave.jpg', default_size: 20, height: 600, width: 800},
      {name: 'castle', file_name: 'castle.png', default_size: 20, height: 974, width: 1280},
      {name: 'cat', file_name: 'cat.png', default_size: 20, height: 740, width: 1280},
      {name: 'cave', file_name: 'cave.jpg', default_size: 20, height: 828, width: 1280},
      {name: 'dragon', file_name: 'dragon.jpg', default_size: 20, height: 851, width: 1280},
      {name: 'fox', file_name: 'fox.png', default_size: 20, height: 640, width: 1280},
      {name: 'iron-man', file_name: 'iron-man.jpg', default_size: 20, height: 853, width: 1280},
      {name: 'mickey', file_name: 'mickey.jpg', default_size: 20, height: 720, width: 1280},
      {name: 'minions', file_name: 'minions.jpg', default_size: 20, height: 853, width: 1280},
      {name: 'olag', file_name: 'olaf.jpg', default_size: 20, height: 853, width: 1280},
      {name: 'optimus', file_name: 'optimus.jpg', default_size: 20, height: 853, width: 1280},
      {name: 'owl', file_name: 'owl.png', default_size: 20, height: 1055, width: 1280},
      {name: 'santa', file_name: 'santa.jpg', default_size: 20, height: 972, width: 1280},
      {name: 'shark', file_name: 'shark.png', default_size: 20, height: 872, width: 1280},
      {name: 'winter', file_name: 'winter.jpg', default_size: 20, height: 720, width: 1280},
    ]
    puzzles.each do |puzzle|
      Puzzle.find_or_create_by!(puzzle)
    end
    puts "There are #{Puzzle.all.count} puzzles now in the system."
  end
end
