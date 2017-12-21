class BoxOffice::Movies
  attr_accessor :name, :rt_score, :url, :top_three, :cc, :a_score


  def self.today
    self.mov_info
    self.more_info
  end


  def self.mov_info
    doc1 = Nokogiri::HTML(open("https://www.rottentomatoes.com/"))

      movie_1 = self.new
      movie_1.name = doc1.css("#homepage-top-box-office .movie_list .middle_col")[0].text.strip
      movie_1.rt_score = doc1.css("#homepage-top-box-office .movie_list .left_col")[0].text.strip
      movie_1.url = doc1.css("#homepage-top-box-office .movie_list .middle_col a")[0].attr("href")

      movie_2 = self.new
      movie_2.name = doc1.css("#homepage-top-box-office .movie_list .middle_col")[1].text.strip
      movie_2.rt_score = doc1.css("#homepage-top-box-office .movie_list .left_col")[1].text.strip
      movie_2.url = doc1.css("#homepage-top-box-office .movie_list .middle_col a")[1].attr("href")

      movie_3 = self.new
      movie_3.name = doc1.css("#homepage-top-box-office .movie_list .middle_col")[2].text.strip
      movie_3.rt_score = doc1.css("#homepage-top-box-office .movie_list .left_col")[2].text.strip
      movie_3.url = doc1.css("#homepage-top-box-office .movie_list .middle_col a")[2].attr("href")

      [movie_1, movie_2, movie_3]
  end


  def self.more_info
    top_three = self.mov_info
     top_three.each.with_index do |movie, i|
       doc2 = Nokogiri::HTML(open("https://www.rottentomatoes.com#{top_three[i.to_i].url}"))
       top_three[i.to_i].cc = doc2.css("#scorePanel .col-full-xs").text.strip
       top_three[i.to_i].a_score = doc2.css("#scorePanel .audience-score .media-body .meter-value").text.strip
     end
  end


end
