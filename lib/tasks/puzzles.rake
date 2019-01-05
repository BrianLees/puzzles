namespace :puzzles do
  desc "Seed Puzzles"
  task seed_puzzles: :environment do
    puzzles = [
      {name: 'brave', file_name: 'brave.jpg', default_size: 16},
    ]
    puzzles.each do |puzzle|
      Puzzle.find_or_create_by!(puzzle)
    end
  end

  p "There have been #{Puzzle.count} puzzles created in the system."
end
