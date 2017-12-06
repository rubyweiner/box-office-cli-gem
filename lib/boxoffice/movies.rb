class BoxOffice::Movies
  attr_accessor :name, :rt_score, :a_score, :url

  def self.Today
    movie_1 = Movie.new
    movie_1.name = "Coco"
    movie_1.rt_score = "96%"
    movie_1.a_score = "96%"
    movie_1.url = "https://www.rottentomatoes.com/m/coco_2017"

    movie_2 = Movie.new
    movie_2.name = "Justice League"
    movie_2.rt_score = "41%"
    movie_2.a_score = "81%"
    movie_2.url = "https://www.rottentomatoes.com/m/justice_league_2017"

    movie_3 = Movie.new
    movie_3.name = "Wonder"
    movie_3.rt_score = "85%"
    movie_3.a_score = "91%"
    movie_3.url = "https://www.rottentomatoes.com/m/wonder"

    [movie_1, movie_2, movie_3]
  end

end
