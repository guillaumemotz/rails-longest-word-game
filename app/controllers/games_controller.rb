class GamesController < ApplicationController

  def new
    # display a new random grid and a form
    array_of_letters = ("a".."z").to_a
    @letters = array_of_letters.sample(10)
  end

  def score
    @score = params[:word].split("")
    puts "yay" if @score.all? { |i| @letters.include?(i) }
    # raise
  end

  private

  # def included_in? array
  #    array.to_set.superset?(self.to_set)
  #  end

end
