class BoxOffice::Movies
  attr_accessor :name, :rt_score, :url

  def self.today
    self.scrape_mov
  end


  def self.scrape_mov
    movies = []
    movies << self.scrape_RT
  end



  def self.scrape_RT
    doc = Nokogiri::HTML(open("https://www.rottentomatoes.com/"))
      movie = self.new
      movie.name = doc.css("#homepage-top-box-office .movie_list .middle_col")[0].text.strip
      movie.rt_score = doc.css("#homepage-top-box-office .movie_list .left_col")[0].text.strip
      movie.url = doc.css("#homepage-top-box-office .movie_list .middle_col a")[0].attr("href")

    movie
  end
end
