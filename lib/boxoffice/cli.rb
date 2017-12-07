 class BoxOffice::CLI
  def call
    list_movies
    options
    goodbye
  end

  def list_movies
    puts "Today's Top 3 Box Office Movies:"
    @movies =  BoxOffice::Movies.today
    @movies.each.with_index(1) do |movies, i|
      puts "#{i}. #{movies.name} - Rotton Tomatoes: #{movies.rt_score} - #{movies.a_score} of Audience liked it."
    end
  end

  def options
    input = nil
    while input != "exit"
      puts "Type in the number of the movie you'd like more information on. Type 'list' to see today's top 3 box office movies again. Type 'exit' to quit at any time."
      input = gets.strip
      if input.to_i > 0
        the_movie = @movies[input.to_i - 1]
        puts "#{the_movie.name} - Rotton Tomatoes: #{the_movie.rt_score} - #{the_movie.a_score} of Audience liked it."#
      elsif input == "list"
        list_movies
      end
    end
  end

  def goodbye
    puts "Thank you for using the boxoffice-cli-gem!"
  end
end
