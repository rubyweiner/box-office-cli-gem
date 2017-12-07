require 'pry'
class BoxOffice::Movies
  attr_accessor :name, :rt_score, :a_score, :url

  def self.today
    self.scrape_mov
  end


  def self.scrape_mov
    movies = []

    movies << self.scrape_RT
    # go to rottentomatoes, find the top three Movies
    # extract the properties of each movies
    # instantiate a movie


  end



  def self.scrape_RT
    doc = Nokogiri::HTML(open("https://www.rottentomatoes.com/"))
      binding.pry
        movie.name = doc.css("#homepage-top-box-office .movie_list .middle_col")[i].text

        movie.rt_score = doc.css("#homepage-top-box-office .movie_list .left_col")[i].text

        movie.url = doc.css("#homepage-top-box-office .movie_list .middle_col a")[i].attr("href")

  end
end
