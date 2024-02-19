require 'json'
require 'open-uri'

class GamesController < ApplicationController

  def new
    al = ('a'..'z').to_a
    @letters = al.sample(10)
    # 10.times do
    #   @letters.push(al.sample)
    # end
  end

  def score
    @word = params[:word]
    url = "https://wagon-dictionary.herokuapp.com/#{@word}"
    response = URI.open(url).read
    JSON.parse(response)

  # @word.each_char do |char|
  #   @pop = char.downcase(@letters)
  # end

  # @answer = "You have to use the letters given to you : #{@letters}"
  # elsif params[]
  #   @answer = "sorry... #{@word} is not a valid english word."
  # else
  #   @answer = "Congratulation! 😍"
  # end
  # return @answer
  end
end
