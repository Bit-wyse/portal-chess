module ApplicationHelper
  def random_puzzle
    Puzzle.find_by_sql("SELECT 1 FROM puzzles ORDER BY RANDOM() LIMIT 1")
  end
end
