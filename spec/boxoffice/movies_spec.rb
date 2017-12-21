require 'spec_helper'

RSpec.describe BoxOffice::Movies do
  context 'Class Methods' do
    let(:movies){BoxOffice::Movies.today}

    # If other boxoffice movies rank higher than the current ones
    # will have to be updated based on more current values from:
    # https://www.rottentomatoes.com/

  describe '.today' do
    it 'returns an array of three movies' do
      expect(movies).to be_an(Array)
      expect(movies.first).to be_a(BoxOffice::Movies)
    end

    it 'correctly scrapes names, rotten tomato scores, urls, critic consensus, and audience score' do
      expect(movies.first.name).to eq("Star Wars: The Last Jedi")
      expect(movies.first.rt_score).to eq("92%")
      expect(movies.first.url).to eq("m/star_wars_the_last_jedi")
      expect(movies.first.cc).to eq("Critics Consensus: Star Wars: The Last Jedi honors the saga's rich legacy while adding some surprising twists -- and delivering all the emotion-rich action fans could hope for.")
      expect (moveis.first.a_score) to eq("54%")

     end
    end

  describe '.mov_info' do
    it 'returns an array of movies based on their rank from Rotten Tomatos.' do
        expect (BoxOffice::Movies.mov_info(1)).to eq(movies[0])
    end

    it 'correctly scrapes name, rt_score, and url' do
      expect(movies.first.name).to eq("Star Wars: The Last Jedi")
      expect(movies.first.rt_score).to eq("92%")
      expect(movies.first.url).to eq("m/star_wars_the_last_jedi")
    end
  end

  describe '.more_info' do
    it 'adds cc and a_score values to top three movies' do
      expect (movies.first.cc).to eq("Critics Consensus: Star Wars: The Last Jedi honors the saga's rich legacy while adding some surprising twists -- and delivering all the emotion-rich action fans could hope for.")
      expect (moveis.first.a_score) to eq("54%")
    end
  end
end


end
