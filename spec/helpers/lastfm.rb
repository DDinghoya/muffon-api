module Helpers
  module LastFM
    RANDOM_STRING = 'wejlhg239gh23'.freeze

    class << self
      def not_found_error
        { error: { code: 404, text: 'Not found.' } }
      end

      def artist_info_data
        {:artist=>{:description=>"Wild Nothing is the solo project of Virginia-born Jack Tatum. Tatum began recording under the moniker Wild Nothing in the summer of 2009 in Blacksburg, Virginia. Upon gathering attention in indie music circles, he was signed with the Captured Tracks record label and began touring with a band. His debut full-length, \"Gemini,\" was released in spring 2010 to acclaim from Pitchfork Media and the music editors at Amazon.com. A follow-up album called \"Nocturne\" was released in 2012. His second EP \"Empty Estate\" was released in May 2013. Tatum's third LP entitled \"Life of Pause\" was released on February 19, 2016.", :listeners_count=>544773, :mbid=>"a181595e-5b84-4439-a5f4-f548ddfb64df", :name=>"Wild Nothing", :plays_count=>18885610, :similar_artists=>["Craft Spells", "Beach Fossils", "DIIV", "Small Black", "Blouse"], :tags=>["dream pop", "shoegaze", "indie pop", "indie", "seen live"]}}
      end

      def artist_images_data
        {:artist=>{:images=>["https://lastfm.freetls.fastly.net/i/u/22f79109136549c1afb6942d06b56b7c", "https://lastfm.freetls.fastly.net/i/u/200ae0a4719dd1cc72a2e86411d63335", "https://lastfm.freetls.fastly.net/i/u/da501dd32b674fd8a142d6c37c215482", "https://lastfm.freetls.fastly.net/i/u/85382d1d98294ee85c063271310c048d", "https://lastfm.freetls.fastly.net/i/u/7027e7ec21b1a2441f63bd0ba63376a4", "https://lastfm.freetls.fastly.net/i/u/366b5319c7984bb3b5084d12cbc5c7a7", "https://lastfm.freetls.fastly.net/i/u/3ab61151452be7ec198185106701b4bf", "https://lastfm.freetls.fastly.net/i/u/eec8d4a19d8b8bfcca4dda63852c2d96", "https://lastfm.freetls.fastly.net/i/u/19f85029859341e18b2eb68ebb856f3e", "https://lastfm.freetls.fastly.net/i/u/897a6c0bda434287956158c691090e57", "https://lastfm.freetls.fastly.net/i/u/bc4e3c8d6028e4944131a7d2563c9cd3", "https://lastfm.freetls.fastly.net/i/u/61d2f5916075eee85d3cfbe440e3c5ee", "https://lastfm.freetls.fastly.net/i/u/26c9b5bba82125477e9bd4c6b2f4650d", "https://lastfm.freetls.fastly.net/i/u/42ab10a6446fc131831716b4f6516a5f", "https://lastfm.freetls.fastly.net/i/u/98b0b9c5739546c7b5ea379950ef72e7", "https://lastfm.freetls.fastly.net/i/u/fa739b942632407bacf7c0683fbd6aa1", "https://lastfm.freetls.fastly.net/i/u/ebb4be5dd53f4399965c5235f48e3964", "https://lastfm.freetls.fastly.net/i/u/f9398f6f4c80dc5caee666e175f4e4bd", "https://lastfm.freetls.fastly.net/i/u/7b351bd330ca462b909c4932c2647e6e", "https://lastfm.freetls.fastly.net/i/u/b6502cb046b445d6ade64e3511cc922b", "https://lastfm.freetls.fastly.net/i/u/5f583b3b5336475caa2beeb93a7d545c", "https://lastfm.freetls.fastly.net/i/u/721721158f1e4cc7cc41604349bd535a", "https://lastfm.freetls.fastly.net/i/u/6bf397e317ff80d51042cc97757eafc3", "https://lastfm.freetls.fastly.net/i/u/ef46ec1540f943e19af0d5ade9f08da6", "https://lastfm.freetls.fastly.net/i/u/ac0be21ef65a90aab89b0257be8ff57b", "https://lastfm.freetls.fastly.net/i/u/1831534e73f031571d9f981440dbbb5a", "https://lastfm.freetls.fastly.net/i/u/aa8ef34d57785709a61e8f131bee727e", "https://lastfm.freetls.fastly.net/i/u/e0126f28d4f64d4dcd8d276933b93bfc", "https://lastfm.freetls.fastly.net/i/u/adf1d666b7db4ee8ab65fa9afbc6f74c", "https://lastfm.freetls.fastly.net/i/u/f076c0a8e5d741d9be5a0a5099b8a40b", "https://lastfm.freetls.fastly.net/i/u/bffc54f3e3b84bb288b090eb6d56b3dc", "https://lastfm.freetls.fastly.net/i/u/8612765cc17f4b0996cdca0f6d08928b", "https://lastfm.freetls.fastly.net/i/u/b80b543f5e3b42679ad3ab005a7a7bdf", "https://lastfm.freetls.fastly.net/i/u/fa582fdb0fb644abb14388d0f75f7fcd", "https://lastfm.freetls.fastly.net/i/u/1d0427bdc6624bc88003f18c99a4206f", "https://lastfm.freetls.fastly.net/i/u/b794e49e786318fb9fd2575944881340", "https://lastfm.freetls.fastly.net/i/u/4ea801e45ece470ca043ed84eb32aa14", "https://lastfm.freetls.fastly.net/i/u/4ded266f515148709b7e281035c28995", "https://lastfm.freetls.fastly.net/i/u/d9c458e967a5f95b6b011c756bdd7dd5", "https://lastfm.freetls.fastly.net/i/u/79c78fd900dd4a3ba943535ab0513e28"], :name=>"Wild Nothing", :page=>1}}
      end

      def artist_tracks_data
        {:artist=>{:name=>"Wild Nothing", :page=>1, :tracks=>[{:listeners_count=>206958, :plays_count=>1212202, :title=>"Chinatown"}, {:listeners_count=>197211, :plays_count=>1188484, :title=>"Shadow"}, {:listeners_count=>161406, :plays_count=>971066, :title=>"Live In Dreams"}, {:listeners_count=>160711, :plays_count=>969917, :title=>"Summer Holiday"}, {:listeners_count=>131388, :plays_count=>825219, :title=>"Nocturne"}]}}
      end

      def artist_albums_data
        {:artist=>{:albums=>[{:cover=>"https://lastfm.freetls.fastly.net/i/u/c60a738cd2244da9bc2b44b51d643602.png", :plays_count=>7087051, :title=>"Gemini"}, {:cover=>"https://lastfm.freetls.fastly.net/i/u/3601d7b9f23e43aea6f9fa002672c6eb.png", :plays_count=>6178839, :title=>"Nocturne"}, {:cover=>"https://lastfm.freetls.fastly.net/i/u/d0398f9a72434e60a3d0479ffbb46c68.png", :plays_count=>689089, :title=>"Golden Haze"}, {:cover=>"https://lastfm.freetls.fastly.net/i/u/ae54820568b7b3e42e9fe0fca2155f20.png", :plays_count=>908217, :title=>"Life of Pause"}, {:cover=>"https://lastfm.freetls.fastly.net/i/u/ee3fa5a535164e01b6f46496adb3240b.png", :plays_count=>777097, :title=>"Empty Estate"}], :name=>"Wild Nothing", :page=>1}}
      end

      def artist_similar_data
        {:artist=>{:name=>"Wild Nothing", :similar=>["Craft Spells", "Beach Fossils", "DIIV", "Small Black", "Blouse", "Real Estate", "The Radio Dept.", "Hibou", "Lower Dens", "The Pains of Being Pure at Heart", "Beach House", "Porcelain Raft", "Washed Out", "Lotus Plaza", "Day Wave", "Minks", "Seapony", "Deerhunter", "Widowspeak", "Frankie Rose", "Heavenly Beat", "Pinkshinyultrablast", "Tamaryn", "Airiel", "Still Corners", "Twin Shadow", "Galaxie 500", "Alvvays", "TOPS", "Slowdive", "Youth Lagoon", "The Drums", "Yuck", "A Sunny Day In Glasgow", "Japanese Breakfast", "Yumi Zouma", "Chapterhouse", "Atlas Sound", "Asobi Seksu", "The Bilinda Butchers", "Whirr", "Ringo Deathstarr", "Memoryhouse", "Drop Nineteens", "Foxes in Fiction", "Gardens & Villa", "Melody's Echo Chamber", "Ride", "No Joy", "Memory Tapes"]}}
      end

      def album_info_data
        {:album=>{:artist=>"Wild Nothing", :cover=>"https://lastfm.freetls.fastly.net/i/u/3601d7b9f23e43aea6f9fa002672c6eb.png", :description=>"Nocturne is the second studio album by American dream pop act Wild Nothing, released on August 28, 2012 on Captured Tracks.\n\nThe success of Wild Nothing's debut allowed Jack Tatum to record in a full studio for its follow-up, a change of pace from Gemini's exclusive use of the laptop for recording. Working with producer Nicolas Vernhes, Tatum stated: “The biggest thing was just having a producer, having somebody extremely knowledgeable to work with. I mean, obviously I had a lot of nice equipment at my disposal for the first time, too ... But I never wanted to use any of that to pursue a wholly different sound to the first album; it was just nice to have somebody to bounce ideas off, to help me tweak things.” \"Shadow,\" the first song from Nocturne to be released, features a string section, something Tatum \"never\" could have done without a studio environment", :listeners_count=>247670, :mbid=>"172124dd-72da-4822-9945-e81b262ca7b3", :plays_count=>6178839, :tags=>["2012", "dream pop", "best of 2012", "indie", "favorite albums"], :title=>"Nocturne", :tracks=>[{:length=>258, :title=>"Shadow"}, {:length=>185, :title=>"Midnight Song"}, {:length=>318, :title=>"Nocturne"}, {:length=>260, :title=>"Through the Grass"}, {:length=>200, :title=>"Only Heather"}, {:length=>218, :title=>"This Chain Won’t Break"}, {:length=>209, :title=>"Disappear Always"}, {:length=>330, :title=>"Paradise"}, {:length=>231, :title=>"Counting Days"}, {:length=>207, :title=>"The Blue Dress"}, {:length=>235, :title=>"Rheya"}]}}
      end

      def track_info_data
        {:track=>{:album=>{:cover=>"https://lastfm.freetls.fastly.net/i/u/391be121643ab50801b7955b0ac5b50c.png", :title=>"Hounds of Love"}, :artist=>"Kate Bush", :description=>"\"Hounds of Love\" is a song written, produced and performed by British singer Kate Bush. It is the title track and the third single released from her number one 1985 album Hounds of Love. The single was released on 24 February 1986, and reached number 18 in the UK Singles Chart. \n\nIn October 2004, Q magazine placed this song at No.21 in its list of the 50 greatest British songs of all-time. \n\nBritish band The Futureheads covered the song in 2005, scoring a UK top 10 hit with it.", :length=>182, :listeners_count=>273791, :mbid=>"984deb15-92f3-4917-9929-c0e930dc8a54", :plays_count=>1785804, :tags=>["80s", "female vocalists", "pop", "alternative", "singer-songwriter"], :title=>"Hounds of Love"}}
      end

      def search_artists_data
        {:search=>{:page=>1, :query=>{:artist=>"wild nothing"}, :results=>[{:listeners_count=>544773, :name=>"Wild Nothing"}, {:listeners_count=>811, :name=>"Wild_Nothing"}, {:listeners_count=>233, :name=>"Wild Nothing //"}, {:listeners_count=>132, :name=>"Wild Nothing /"}, {:listeners_count=>178, :name=>"Beach Fossils feat. Wild Nothing"}]}}
      end

      def search_tracks_data
        {:search=>{:page=>1, :query=>{:track=>"chinatown"}, :results=>[{:artist=>"Wild Nothing", :listeners_count=>206958, :title=>"Chinatown"}, {:artist=>"Destroyer", :listeners_count=>144142, :title=>"Chinatown"}, {:artist=>"Jets to Brazil", :listeners_count=>67896, :title=>"Chinatown"}, {:artist=>"Liam Gallagher", :listeners_count=>35700, :title=>"Chinatown"}, {:artist=>"Do Make Say Think", :listeners_count=>55003, :title=>"Chinatown"}]}}
      end

      def search_albums_data
        {:search=>{:page=>1, :query=>{:album=>"nocturne"}, :results=>[{:artist=>"Wild Nothing", :cover=>"https://lastfm.freetls.fastly.net/i/u/3601d7b9f23e43aea6f9fa002672c6eb.png", :title=>"Nocturne"}, {:artist=>"The Human Abstract", :cover=>"https://lastfm.freetls.fastly.net/i/u/48fe94c4cd994edfbff13e0c87234bce.png", :title=>"Nocturne"}, {:artist=>"Frédéric Chopin", :cover=>"https://lastfm.freetls.fastly.net/i/u/f6bb721f7c8dcff4892a2af2d1d60bb3.png", :title=>"Chopin: Nocturnes"}, {:artist=>"Little Boots", :cover=>"https://lastfm.freetls.fastly.net/i/u/850d9b20c6ff4f02cfa9d378b578b405.png", :title=>"Nocturnes"}, {:artist=>"Frédéric Chopin", :cover=>"https://lastfm.freetls.fastly.net/i/u/4d694d0ca275a963112708eff502db87.png", :title=>"Chopin: Nocturnes (Volume 1)"}]}}
      end

      def search_artists_empty_data
        {:search=>{:page=>1, :query=>{:artist=>"wejlhg239gh23"}, :results=>[]}}
      end

      def search_albums_empty_data
        {:search=>{:page=>1, :query=>{:album=>"wejlhg239gh23"}, :results=>[]}}
      end

      def search_tracks_empty_data
        {:search=>{:page=>1, :query=>{:track=>"wejlhg239gh23"}, :results=>[]}}
      end

      def artist_tags_data
        {:tags=>{:artist=>"Wild Nothing", :tags=>[{:count=>100, :name=>"dream pop"}, {:count=>76, :name=>"shoegaze"}, {:count=>56, :name=>"indie pop"}, {:count=>45, :name=>"indie"}, {:count=>31, :name=>"seen live"}, {:count=>21, :name=>"tweegaze"}, {:count=>8, :name=>"Lo-Fi"}, {:count=>8, :name=>"american"}, {:count=>7, :name=>"chillwave"}, {:count=>4, :name=>"indie rock"}, {:count=>4, :name=>"pop"}, {:count=>4, :name=>"twee"}, {:count=>4, :name=>"alternative"}, {:count=>3, :name=>"new wave"}, {:count=>3, :name=>"electronic"}, {:count=>2, :name=>"twee pop"}, {:count=>2, :name=>"psychedelic"}, {:count=>2, :name=>"ambient"}, {:count=>2, :name=>"virginia"}, {:count=>2, :name=>"synthpop"}, {:count=>2, :name=>"jangle pop"}, {:count=>1, :name=>"rock"}, {:count=>1, :name=>"psychedelic pop"}, {:count=>1, :name=>"Dreamy"}, {:count=>1, :name=>"atmospheric"}, {:count=>1, :name=>"dream-pop"}, {:count=>1, :name=>"USA"}, {:count=>1, :name=>"Post-punk revival"}, {:count=>1, :name=>"hazy beach"}]}}
      end

      def album_tags_data
        {:tags=>{:album=>"Nocturne", :artist=>"Wild Nothing", :tags=>[{:count=>100, :name=>"2012"}, {:count=>85, :name=>"dream pop"}, {:count=>47, :name=>"best of 2012"}, {:count=>39, :name=>"indie"}, {:count=>39, :name=>"favorite albums"}, {:count=>31, :name=>"indie pop"}, {:count=>24, :name=>"indie rock"}, {:count=>24, :name=>"captured tracks"}, {:count=>16, :name=>"shoegaze"}, {:count=>16, :name=>"vinyl"}, {:count=>8, :name=>"chillout"}, {:count=>8, :name=>"rock"}, {:count=>8, :name=>"alternative"}, {:count=>8, :name=>"jangle pop"}, {:count=>8, :name=>"noise pop"}, {:count=>8, :name=>"chillwave"}, {:count=>8, :name=>"10s"}, {:count=>8, :name=>"favourite albums"}, {:count=>8, :name=>"lp"}, {:count=>8, :name=>"best albums ever"}, {:count=>8, :name=>"dream-pop"}, {:count=>8, :name=>"fucking incredible"}, {:count=>8, :name=>"bella union"}, {:count=>8, :name=>"chillgaze"}, {:count=>8, :name=>"albums I have on vinyl"}, {:count=>8, :name=>"rather good stuff"}, {:count=>8, :name=>"album of the month"}, {:count=>8, :name=>"pitchfork best new music"}, {:count=>8, :name=>"lapislazuli"}, {:count=>8, :name=>"best of the 2012"}, {:count=>8, :name=>"niemamnie"}]}}
      end

      def track_tags_data
        {:tags=>{:artist=>"Wild Nothing", :tags=>[{:count=>100, :name=>"dream pop"}, {:count=>46, :name=>"indie"}, {:count=>46, :name=>"chillwave"}, {:count=>42, :name=>"shoegaze"}, {:count=>13, :name=>"electronica"}, {:count=>13, :name=>"indie pop"}, {:count=>13, :name=>"Mellow"}, {:count=>13, :name=>"best of 2010"}, {:count=>9, :name=>"indie rock"}, {:count=>9, :name=>"summer"}, {:count=>9, :name=>"light"}, {:count=>9, :name=>"cosmic currents"}, {:count=>5, :name=>"pop"}, {:count=>5, :name=>"80s"}, {:count=>5, :name=>"female vocalists"}, {:count=>5, :name=>"Love"}, {:count=>5, :name=>"Lo-Fi"}, {:count=>5, :name=>"new wave"}, {:count=>5, :name=>"Awesome"}, {:count=>5, :name=>"melodic"}, {:count=>5, :name=>"psychedelic"}, {:count=>5, :name=>"Dreamy"}, {:count=>5, :name=>"american"}, {:count=>5, :name=>"synthpop"}, {:count=>5, :name=>"nostalgic"}, {:count=>5, :name=>"I like"}, {:count=>5, :name=>"modern rock"}, {:count=>5, :name=>"female vocalist"}, {:count=>5, :name=>"Ballad"}, {:count=>5, :name=>"lovely"}, {:count=>5, :name=>"sunny"}, {:count=>5, :name=>"sweet"}, {:count=>5, :name=>"checkout"}, {:count=>5, :name=>"Neo-Psychedelia"}, {:count=>5, :name=>"Dream"}, {:count=>5, :name=>"sex music"}, {:count=>5, :name=>"bright"}, {:count=>5, :name=>"bedroom pop"}, {:count=>5, :name=>"lizvelrene2010"}, {:count=>5, :name=>"campfire songs"}, {:count=>5, :name=>"my 10s"}, {:count=>5, :name=>"songs that i will still be listening to in a billion years"}, {:count=>5, :name=>"recs I like"}, {:count=>5, :name=>"austin radar"}, {:count=>5, :name=>"relaaax"}, {:count=>5, :name=>"elizabeth marie lester"}, {:count=>5, :name=>"see the world"}, {:count=>5, :name=>"rainy day with black smoke"}, {:count=>5, :name=>"flotsam"}, {:count=>5, :name=>"Shut Up And Drive"}, {:count=>5, :name=>"stone roses-like"}, {:count=>5, :name=>"local stuff from providence"}, {:count=>5, :name=>"Bellezza"}, {:count=>5, :name=>"geografia"}, {:count=>5, :name=>"ibero909fm"}, {:count=>5, :name=>"ibero909fm 8vo aniversario"}, {:count=>5, :name=>"La Ultima Estacion de Radio playlist"}, {:count=>5, :name=>"piuvicini"}, {:count=>5, :name=>"Quenovesquestoycontenta"}, {:count=>5, :name=>"3-4 indie"}, {:count=>5, :name=>"27oooo"}, {:count=>5, :name=>"mvt 2011"}, {:count=>5, :name=>"swirl beat"}, {:count=>5, :name=>"NO WAY TO NORWAY"}, {:count=>5, :name=>"dream pop not hypnagogic pop"}, {:count=>5, :name=>"inexplicable nostalgia"}, {:count=>5, :name=>"song of 2015"}, {:count=>5, :name=>"to all the boys ive loved before"}], :track=>"Chinatown"}}
      end

      def tag_artists_data
        {:tag=>{:artists=>[{:listeners_count=>762945, :name=>"Cocteau Twins"}, {:listeners_count=>959129, :name=>"My Bloody Valentine"}, {:listeners_count=>698674, :name=>"Slowdive"}, {:listeners_count=>1349997, :name=>"Beach House"}, {:listeners_count=>925991, :name=>"Mazzy Star"}, {:listeners_count=>1053910, :name=>"Grimes"}, {:listeners_count=>318267, :name=>"Asobi Seksu"}, {:listeners_count=>187759, :name=>"Cranes"}, {:listeners_count=>306224, :name=>"Lush"}, {:listeners_count=>465354, :name=>"Ride"}, {:listeners_count=>544773, :name=>"Wild Nothing"}, {:listeners_count=>531495, :name=>"The Pains of Being Pure at Heart"}, {:listeners_count=>409950, :name=>"Galaxie 500"}, {:listeners_count=>347414, :name=>"School of Seven Bells"}, {:listeners_count=>171088, :name=>"Chapterhouse"}, {:listeners_count=>2056166, :name=>"M83"}, {:listeners_count=>440797, :name=>"Mercury Rev"}, {:listeners_count=>315315, :name=>"The Chameleons"}, {:listeners_count=>526026, :name=>"Youth Lagoon"}, {:listeners_count=>149735, :name=>"Mojave 3"}, {:listeners_count=>198645, :name=>"A Sunny Day In Glasgow"}], :name=>"dream pop", :page=>1}}
      end

      def tag_albums_data
        {:tag=>{:albums=>[{:artist=>"Lana Del Rey", :cover=>"https://lastfm.freetls.fastly.net/i/u/0256f9c7068d0edb75a477c596cc9787.jpg", :listeners_count=>346017, :title=>"Honeymoon"}, {:artist=>"Lana Del Rey", :cover=>"https://lastfm.freetls.fastly.net/i/u/76106f63a6085261f65c81a5d41a3292.jpg", :listeners_count=>212789, :title=>"Paradise"}, {:artist=>"志方あきこ", :cover=>"https://lastfm.freetls.fastly.net/i/u/6df0a419239ec0247be760f6d0f7e522.jpg", :listeners_count=>4571, :title=>"Navigatoria"}, {:artist=>"Slowdive", :cover=>"https://lastfm.freetls.fastly.net/i/u/1863c131c717666e030c94880e1cce53.jpg", :listeners_count=>476707, :title=>"Souvlaki"}, {:artist=>"My Bloody Valentine", :cover=>"https://lastfm.freetls.fastly.net/i/u/64d919cd14624a56a4441e045246fab4.jpg", :listeners_count=>722355, :title=>"Loveless"}, {:artist=>"Cocteau Twins", :cover=>"https://lastfm.freetls.fastly.net/i/u/a9e76f2e8c9b4528a24d50af9e8f26fb.jpg", :listeners_count=>249680, :title=>"Treasure"}, {:artist=>"志方あきこ", :cover=>"https://lastfm.freetls.fastly.net/i/u/415f18b3061fc9d355684d303067a809.jpg", :listeners_count=>5338, :title=>"Raka"}, {:artist=>"Cocteau Twins", :cover=>"https://lastfm.freetls.fastly.net/i/u/cb986ce168b3283409c2f68f7af577ec.jpg", :listeners_count=>125264, :title=>"Heaven or Las Vegas"}, {:artist=>"Beach House", :cover=>"https://lastfm.freetls.fastly.net/i/u/4b01019d722348568283d18bdcb990af.jpg", :listeners_count=>777183, :title=>"Teen Dream"}, {:artist=>"Slowdive", :cover=>"https://lastfm.freetls.fastly.net/i/u/17ebb43f28ab48318e2937bd8915f96c.jpg", :listeners_count=>174548, :title=>"Pygmalion"}, {:artist=>"Slowdive", :cover=>"https://lastfm.freetls.fastly.net/i/u/6d2bde846a5933b29985d754166cee18.jpg", :listeners_count=>183437, :title=>"Just for a Day"}, {:artist=>"Mazzy Star", :cover=>"https://lastfm.freetls.fastly.net/i/u/60615ead3d8383e70e84a526817de4bf.jpg", :listeners_count=>640728, :title=>"So Tonight That I Might See"}, {:artist=>"Beach House", :cover=>"https://lastfm.freetls.fastly.net/i/u/90ff02d4495f4c50a1b7b2a64798d892.jpg", :listeners_count=>523253, :title=>"Bloom"}, {:artist=>"志方あきこ", :cover=>"https://lastfm.freetls.fastly.net/i/u/0128d00bf9225afbbc99433245efe19b.jpg", :listeners_count=>228, :title=>"caTra"}, {:artist=>"Cocteau Twins", :cover=>"https://lastfm.freetls.fastly.net/i/u/2a6683965f169985bdde9698dfc9cd05.jpg", :listeners_count=>96303, :title=>"Victorialand"}, {:artist=>"Grimes", :cover=>"https://lastfm.freetls.fastly.net/i/u/94cfdb5f36a7f935b6837f5fe8840ed6.jpg", :listeners_count=>699349, :title=>"Visions"}, {:artist=>"My Bloody Valentine", :cover=>"https://lastfm.freetls.fastly.net/i/u/ae3d658e6a77d40a24dba212f1d65916.jpg", :listeners_count=>284751, :title=>"Isn't Anything"}, {:artist=>"Lana Del Rey", :cover=>"https://lastfm.freetls.fastly.net/i/u/0c1ab2edc3e4ed8295bf7764d42ac38a.jpg", :listeners_count=>763298, :title=>"Born to Die - The Paradise Edition"}, {:artist=>"Sandy Leah", :cover=>"https://lastfm.freetls.fastly.net/i/u/fe5cc8b991c96362703d9577e6963a03.jpg", :listeners_count=>11584, :title=>"Sim"}, {:artist=>"Mercury Rev", :cover=>"https://lastfm.freetls.fastly.net/i/u/e52b4f05b43f4b17cba3e22d1d54897d.jpg", :listeners_count=>214108, :title=>"Deserter's Songs"}], :name=>"dream pop", :page=>1}}
      end

      def tag_tracks_data
        {:tag=>{:name=>"dream pop", :tracks=>[{:title=>"Fade Into You", :artist=>"Mazzy Star"}, {:title=>"Sometimes", :artist=>"My Bloody Valentine"}, {:title=>"Alison", :artist=>"Slowdive"}, {:title=>"When You Sleep", :artist=>"My Bloody Valentine"}, {:title=>"Norway", :artist=>"Beach House"}, {:title=>"Zebra", :artist=>"Beach House"}, {:title=>"Uten deg (Nogsf)", :artist=>"Eftos!rx"}, {:title=>"Soon", :artist=>"My Bloody Valentine"}, {:title=>"Walk in the Park", :artist=>"Beach House"}, {:title=>"Into Dust", :artist=>"Mazzy Star"}, {:title=>"Lorelei", :artist=>"Cocteau Twins"}, {:title=>"Souvlaki Space Station", :artist=>"Slowdive"}, {:title=>"When the Sun Hits", :artist=>"Slowdive"}, {:title=>"Genesis", :artist=>"Grimes"}, {:title=>"I Only Said", :artist=>"My Bloody Valentine"}, {:title=>"To Here Knows When", :artist=>"My Bloody Valentine"}, {:title=>"Siren", :artist=>"志方あきこ"}, {:title=>"Machine Gun", :artist=>"Slowdive"}, {:title=>"Thursday", :artist=>"Asobi Seksu"}, {:title=>"Blown a Wish", :artist=>"My Bloody Valentine"}, {:title=>"Skin of the Night", :artist=>"M83"}, {:title=>"Only Shallow", :artist=>"My Bloody Valentine"}, {:title=>"Silver Soul", :artist=>"Beach House"}, {:title=>"Cherry-Coloured Funk", :artist=>"Cocteau Twins"}, {:title=>"Loomer", :artist=>"My Bloody Valentine"}, {:title=>"Oblivion", :artist=>"Grimes"}, {:title=>"Heaven or Las Vegas", :artist=>"Cocteau Twins"}, {:title=>"Come in Alone", :artist=>"My Bloody Valentine"}, {:title=>"Flowers In December", :artist=>"Mazzy Star"}, {:title=>"Sorriso", :artist=>"志方あきこ"}, {:title=>"Ivo", :artist=>"Cocteau Twins"}, {:title=>"Lover of Mine", :artist=>"Beach House"}, {:title=>"Angels", :artist=>"The xx"}, {:title=>"Myth", :artist=>"Beach House"}, {:title=>"40 Days", :artist=>"Slowdive"}, {:title=>"Gila", :artist=>"Beach House"}, {:title=>"Kim & Jessie", :artist=>"M83"}, {:title=>"La Corolle", :artist=>"志方あきこ"}, {:title=>"Bluebeard", :artist=>"Cocteau Twins"}, {:title=>"Take Care", :artist=>"Beach House"}, {:title=>"Pandora", :artist=>"Cocteau Twins"}, {:title=>"Vapour Trail", :artist=>"Ride"}, {:title=>"Graveyard Girl", :artist=>"M83"}, {:title=>"Half Asleep", :artist=>"School of Seven Bells"}, {:title=>"Used to Be", :artist=>"Beach House"}, {:title=>"Persephone", :artist=>"Cocteau Twins"}, {:title=>"10 Mile Stereo", :artist=>"Beach House"}, {:title=>"Better Times", :artist=>"Beach House"}, {:title=>"To the Lighthouse", :artist=>"Memoryhouse"}, {:title=>"Navigatoria", :artist=>"志方あきこ"}], :page=>1}}
      end

      def tag_info_data
        {:tag=>{:description=>"Dream pop is a genre of music where timbre and texture are as important, if not more so, than melody and song structure. Vocals when present are subsumed within the music and act as another texture or instrument. For example guitarists in dream pop played with feedback and effects to blur and mutate notes, to produce pure iridescent noise, not memorable melodies and toe-tapping tunes, although these when present they weren't the focus.\nThe Cocteau Twins are widely recognized as pioneers of the dream pop sound, their sound a collage of soft,  almost indecipherable vocals and languid soundscapes. A.R. Kane were the first band to explicitly describe their music as 'dream pop' and once claimed that \"a lot of the time we're trying to transform dream imagery into sounds.\" Which echoes My Bloody Valentine (who are a premier Dream Pop group who had a huge influence on 'shoegazers' like Slowdive and Lush) approach to recording music while in a state between sleep and wakefulness (hypnagogic).", :name=>"dream pop", :taggers_count=>24157, :taggings_count=>119450}}
      end
    end
  end
end
