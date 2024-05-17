require_relative 'cross_words'

class App
  attr_reader :horizontal, :vertical

  def initialize
    @horizontal = nil
    @vertical = nil
  end

  def check_words
    puts '--------------------------------------------------'
    puts 'Welcome to Cross Words Intersection'
    puts '--------------------------------------------------'

    loop do
      print 'Please input the horizontal word: '
      @horizontal = gets.chomp.downcase

      break unless @horizontal.empty? || !@horizontal.match?(/^[a-z]+$/)

      puts 'Error: Please input a valid word.'
    end

    loop do
      print 'Please input the vertical word: '
      @vertical = gets.chomp.downcase

      break unless @vertical.empty? || !@vertical.match?(/^[a-z]+$/)

      puts 'Error: Please input a valid word.'
    end

    crossed_pattern = CrossWords.intersect(horizontal: @horizontal, vertical: @vertical)

    puts crossed_pattern
  end
end
