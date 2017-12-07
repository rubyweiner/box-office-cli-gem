class BoxOffice::Movies
  attr_accessor :name, :rt_score, :a_score, :url

  def self.today
    self.scrape_mov
  end


  def self.scrape_mov
    movies = []

    movies << self.scrape_mov
    # go to rottentomatoes, find the top three Movies
    # extract the properties of each movies
    # instantiate a movie

     
  end

  def self.scrape_RT
    doc = Nokogiri::HTML(open("https://rottontomatoes.com"))

end
