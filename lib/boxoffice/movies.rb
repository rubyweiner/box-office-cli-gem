class BoxOffice::Movies
  attr_accessor :name, :rt_score, :url, :movies

  def self.today
    self.scrape_RT
  end


  #def self.scrape_mov
#    top_three = []
#    top_three << movies
#    binding.pry
#  end

#movies.each_slice(3).to_a

  def self.scrape_RT
    doc = Nokogiri::HTML(open("https://www.rottentomatoes.com/"))
      movie_1 = self.new
      movie_1.name = doc.css("#homepage-top-box-office .movie_list .middle_col")[0].text.strip
      movie_1.rt_score = doc.css("#homepage-top-box-office .movie_list .left_col")[0].text.strip
      movie_1.url = doc.css("#homepage-top-box-office .movie_list .middle_col a")[0].attr("href")

      movie_2 = self.new
      movie_2.name = doc.css("#homepage-top-box-office .movie_list .middle_col")[1].text.strip
      movie_2.rt_score = doc.css("#homepage-top-box-office .movie_list .left_col")[1].text.strip
      movie_2.url = doc.css("#homepage-top-box-office .movie_list .middle_col a")[1].attr("href")

      movie_3 = self.new
      movie_3.name = doc.css("#homepage-top-box-office .movie_list .middle_col")[2].text.strip
      movie_3.rt_score = doc.css("#homepage-top-box-office .movie_list .left_col")[2].text.strip
      movie_3.url = doc.css("#homepage-top-box-office .movie_list .middle_col a")[2].attr("href")

      movies = [movie_1, movie_2, movie_3]
  end

end
