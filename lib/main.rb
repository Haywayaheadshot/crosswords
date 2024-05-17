require_relative 'app'

class Main
  def start
    app = App.new
    app.check_words
  end
end

Main.new.start
