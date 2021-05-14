module Helpers
  module LastFM
    module Search
      class << self
        def albums_data
          {:search=>{:albums=>[{:artist=>{:name=>"Wild Nothing"}, :image=>{:extrasmall=>"https://lastfm.freetls.fastly.net/i/u/64s/c6f59c1e5e7240a4c0d427abd71f3dbb.png", :large=>"https://lastfm.freetls.fastly.net/i/u/600x600/c6f59c1e5e7240a4c0d427abd71f3dbb.png", :medium=>"https://lastfm.freetls.fastly.net/i/u/300x300/c6f59c1e5e7240a4c0d427abd71f3dbb.png", :original=>"https://lastfm.freetls.fastly.net/i/u/c6f59c1e5e7240a4c0d427abd71f3dbb.png", :small=>"https://lastfm.freetls.fastly.net/i/u/174s/c6f59c1e5e7240a4c0d427abd71f3dbb.png"}, :title=>"Nocturne [+CD] Disc 1"}, {:artist=>{:name=>"Wild Nothing"}, :image=>{:extrasmall=>"https://lastfm.freetls.fastly.net/i/u/64s/c6f59c1e5e7240a4c0d427abd71f3dbb.png", :large=>"https://lastfm.freetls.fastly.net/i/u/600x600/c6f59c1e5e7240a4c0d427abd71f3dbb.png", :medium=>"https://lastfm.freetls.fastly.net/i/u/300x300/c6f59c1e5e7240a4c0d427abd71f3dbb.png", :original=>"https://lastfm.freetls.fastly.net/i/u/c6f59c1e5e7240a4c0d427abd71f3dbb.png", :small=>"https://lastfm.freetls.fastly.net/i/u/174s/c6f59c1e5e7240a4c0d427abd71f3dbb.png"}, :title=>"Nocturne (2012)"}, {:artist=>{:name=>"Wild Nothing"}, :image=>{:extrasmall=>"https://lastfm.freetls.fastly.net/i/u/64s/c6f59c1e5e7240a4c0d427abd71f3dbb.png", :large=>"https://lastfm.freetls.fastly.net/i/u/600x600/c6f59c1e5e7240a4c0d427abd71f3dbb.png", :medium=>"https://lastfm.freetls.fastly.net/i/u/300x300/c6f59c1e5e7240a4c0d427abd71f3dbb.png", :original=>"https://lastfm.freetls.fastly.net/i/u/c6f59c1e5e7240a4c0d427abd71f3dbb.png", :small=>"https://lastfm.freetls.fastly.net/i/u/174s/c6f59c1e5e7240a4c0d427abd71f3dbb.png"}, :title=>"Wild Nothing - Nocturne (2012)"}, {:artist=>{:name=>"Wild Nothing - Nocturne"}, :image=>{:extrasmall=>"https://lastfm.freetls.fastly.net/i/u/64s/c6f59c1e5e7240a4c0d427abd71f3dbb.png", :large=>"https://lastfm.freetls.fastly.net/i/u/600x600/c6f59c1e5e7240a4c0d427abd71f3dbb.png", :medium=>"https://lastfm.freetls.fastly.net/i/u/300x300/c6f59c1e5e7240a4c0d427abd71f3dbb.png", :original=>"https://lastfm.freetls.fastly.net/i/u/c6f59c1e5e7240a4c0d427abd71f3dbb.png", :small=>"https://lastfm.freetls.fastly.net/i/u/174s/c6f59c1e5e7240a4c0d427abd71f3dbb.png"}, :title=>"Nocturne"}, {:artist=>{:name=>"Wild Nothing"}, :image=>{:extrasmall=>"https://lastfm.freetls.fastly.net/i/u/64s/c6f59c1e5e7240a4c0d427abd71f3dbb.png", :large=>"https://lastfm.freetls.fastly.net/i/u/600x600/c6f59c1e5e7240a4c0d427abd71f3dbb.png", :medium=>"https://lastfm.freetls.fastly.net/i/u/300x300/c6f59c1e5e7240a4c0d427abd71f3dbb.png", :original=>"https://lastfm.freetls.fastly.net/i/u/c6f59c1e5e7240a4c0d427abd71f3dbb.png", :small=>"https://lastfm.freetls.fastly.net/i/u/174s/c6f59c1e5e7240a4c0d427abd71f3dbb.png"}, :title=>"Nocturne (Wild Nothing)"}], :page=>2, :total_pages=>19}}
        end

        def artists_data
          {:search=>{:artists=>[{:listeners_count=>132, :name=>"Wild Nothing /"}, {:listeners_count=>1, :name=>"??? ??(Wild Nothing)"}, {:listeners_count=>71, :name=>"Beach Fossils, Wild Nothing"}, {:listeners_count=>4, :name=>"와일드 낫띵(Wild Nothing)"}, {:listeners_count=>340, :name=>"Beach Fossils & Wild Nothing"}], :page=>2, :total_pages=>40}}
        end

        def tracks_data
          {:search=>{:page=>2, :total_pages=>38, :tracks=>[{:artist=>{:name=>"Wild Nothing"}, :id=>1, :title=>"Chinatown (Live from Brooklyn Steel)"}, {:artist=>{:name=>"Wild Nothing"}, :id=>2, :title=>"Gemini - Chinatown"}, {:artist=>{:name=>"Wild_Nothing"}, :id=>3, :title=>"Chinatown"}, {:artist=>{:name=>"Wild Nothing"}, :id=>4, :title=>"10 Chinatown"}, {:artist=>{:name=>"Wild Nothing"}, :id=>5, :title=>"\"Chinatown\" from the album Gemini (Captured Tracks) - Wild N"}]}}
        end

        def tags_data
          {:search=>{:page=>2, :tags=>[{:name=>"orchestral pop"}, {:name=>"trip-pop"}, {:name=>"sunshine pop"}, {:name=>"emo-pop"}, {:name=>"nightmare pop"}, {:name=>"pop opera"}, {:name=>"hk-pop"}, {:name=>"emo pop"}, {:name=>"fight-pop"}, {:name=>"weed pop"}], :total_pages=>10}}
        end
      end
    end
  end
end
