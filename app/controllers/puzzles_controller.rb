class PuzzlesController < ApplicationController
  before_action :set_puzzle, only: [:show, :edit, :update, :destroy]

  # GET /puzzles
  # GET /puzzles.json
  def index
    @puzzles = Puzzle.all
  end

  # GET /puzzles/1
  # GET /puzzles/1.json
  def show
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_puzzle
      @puzzle = Puzzle.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def puzzle_params
      params.require(:puzzle).permit(:name, :picture, :default_size)
    end
end
