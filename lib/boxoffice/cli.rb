 class BoxOffice::CLI

  def call
    list_movies
    options
    goodbye
  end

  def list_movies
    puts "Today's Top 3 Box Office Movies:"
    @movies =  BoxOffice::Movies.today
    @movies.each.with_index(1) do |movie, i|
      puts "#{i}. #{movie.name} - Rotton Tomatoes: #{movie.rt_score}"
    end
  end

  def options
    input = nil
    while input != "exit"
      puts "Type in the number of the movie you'd like more information on. Type 'list' to see today's top 3 box office movies again. Type 'exit' to quit at any time."
      input = gets.strip
      if input.to_i > 0
        movie = @movies[input.to_i - 1]
        puts "#{movie.name} - Rotton Tomatoes: #{movie.rt_score}"
      elsif input == "list"
        list_movies
      end
    end
  end

  def goodbye
    puts "Thank you for using the boxoffice-cli-gem!"
  end
end
