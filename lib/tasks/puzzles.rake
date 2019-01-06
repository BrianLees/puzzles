namespace :puzzles do
  desc "Seed Puzzles"
  task seed_puzzles: :environment do
    puzzles = [
      {name: 'apple', file_name: 'apple.png', thumbnail_file_name: 'apple_tn.jpg', default_size: 20, height: 1280, width: 1280},
      {name: 'brave', file_name: 'brave.jpg', thumbnail_file_name: 'brave_tn.jpg', default_size: 20, height: 600, width: 800},
      {name: 'castle', file_name: 'castle.png', thumbnail_file_name: 'castle_tn.jpg', default_size: 20, height: 974, width: 1280},
      {name: 'cat', file_name: 'cat.png', thumbnail_file_name: 'cat_tn.jpg', default_size: 20, height: 740, width: 1280},
      {name: 'cave', file_name: 'cave.jpg', thumbnail_file_name: 'cave_tn.jpg', default_size: 20, height: 828, width: 1280},
      {name: 'dragon', file_name: 'dragon.jpg', thumbnail_file_name: 'dragon_tn.jpg', default_size: 20, height: 851, width: 1280},
      {name: 'fox', file_name: 'fox.jpg', thumbnail_file_name: 'fox_tn.jpg', default_size: 20, height: 859, width: 1280},
      {name: 'iron-man', file_name: 'iron-man.jpg', thumbnail_file_name: 'iron-man_tn.jpg', default_size: 20, height: 853, width: 1280},
      {name: 'mickey', file_name: 'mickey.jpg', thumbnail_file_name: 'mickey_tn.jpg', default_size: 20, height: 720, width: 1280},
      {name: 'minions', file_name: 'minions.jpg', thumbnail_file_name: 'minions_tn.jpg', default_size: 20, height: 853, width: 1280},
      {name: 'olag', file_name: 'olaf.jpg', thumbnail_file_name: 'olaf_tn.jpg', default_size: 20, height: 853, width: 1280},
      {name: 'optimus', file_name: 'optimus.jpg', thumbnail_file_name: 'optimus_tn.jpg', default_size: 20, height: 853, width: 1280},
      {name: 'owls', file_name: 'owl.png', thumbnail_file_name: 'owl_tn.jpg', default_size: 20, height: 916, width: 1280},
      {name: 'santa', file_name: 'santa.jpg', thumbnail_file_name: 'santa_tn.jpg', default_size: 20, height: 972, width: 1280},
      {name: 'shark', file_name: 'shark.png', thumbnail_file_name: 'shark_tn.jpg', default_size: 20, height: 872, width: 1280},
      {name: 'winter', file_name: 'winter.jpg', thumbnail_file_name: 'winter_tn.jpg', default_size: 20, height: 720, width: 1280},
    ]
    puzzles.each do |puzzle|
      Puzzle.find_or_create_by!(puzzle)
    end
    puts "There are #{Puzzle.all.count} puzzles now in the system."
  end
end
