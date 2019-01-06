namespace :puzzles do
  desc "Seed Puzzles"
  task seed_puzzles: :environment do
    puzzles = [
      {name: 'apple', file_name: 'apple.png', default_size: 16},
      {name: 'brave', file_name: 'brave.jpg', default_size: 16},
      {name: 'castle', file_name: 'castle.png', default_size: 16},
      {name: 'cat', file_name: 'cat.png', default_size: 16},
      {name: 'cave', file_name: 'cave.jpg', default_size: 16},
      {name: 'dragon', file_name: 'dragon.jpg', default_size: 16},
      {name: 'fox', file_name: 'fox.png', default_size: 16},
      {name: 'iron-man', file_name: 'iron-man.jpg', default_size: 16},
      {name: 'mickey', file_name: 'mickey.jpg', default_size: 16},
      {name: 'minions', file_name: 'minions.jpg', default_size: 16},
      {name: 'olag', file_name: 'olaf.jpg', default_size: 16},
      {name: 'optimus', file_name: 'optimus.jpg', default_size: 16},
      {name: 'owl', file_name: 'owl.png', default_size: 16},
      {name: 'santa', file_name: 'santa.jpg', default_size: 16},
      {name: 'shark', file_name: 'shark.png', default_size: 16},
      {name: 'turtle', file_name: 'turtle.png', default_size: 16},
      {name: 'winter', file_name: 'winter.jpg', default_size: 16},
    ]
    puzzles.each do |puzzle|
      Puzzle.find_or_create_by!(puzzle)
    end
  end

  p "There have been #{Puzzle.count} puzzles created in the system."
end
