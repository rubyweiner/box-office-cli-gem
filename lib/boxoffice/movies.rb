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
    doc = Nokogiri::HTML(open('https://rottontomatoes.com/browse/in-theaters/'))
    binding.pry
    #movie = self.new
    #movie.name = doc.search("h3.movieTitle").text
    #movie.rt_score = doc.search("#movie_info span.tMeterScore").text
    #movie.a_score = doc.search ("#movie_info span.tMeterIcon.tiny").text
    #movie.url = doc.search("a").first.attr("href")

    movie
  end
end
