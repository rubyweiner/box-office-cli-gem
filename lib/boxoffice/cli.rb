class BoxOffice::CLI
  def call
    list_movies
    options
    goodbye
  end

  def list_movies
    puts "Today's Top Box Office Movies:"
    puts "x"
    puts "y"
    puts "z"
  end

  def options
    input = nil
    while input != "exit"
    puts "Type in the number of the movie you'd like more information on. Type 'list' to see today's top 3 box office movies again. Type 'exit' to quit at any time."
    input = gets.strip
    if input == "1"
      puts "more info on movie 1"
    elsif input == "2"
      puts "more info on movie 2"
    elsif input == "3"
      puts "more info on movie 3"
    elsif input == "list"
      list_movies
    end
  end
  end

  def goodbye
    puts "Thank you for using the boxoffice-cli-gem!"
  end
end
