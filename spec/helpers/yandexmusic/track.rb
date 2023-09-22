module Helpers
  module YandexMusic
    module Track
      class << self
        def albums_data
          {:track=>{:albums=>[{:artist=>{:name=>"Various artists"}, :artists=>[{:name=>"Various artists", :source=>{:id=>171, :name=>"yandexmusic"}}], :image=>{:extrasmall=>"https://avatars.yandex.net/get-music-content/34131/d3018a83.a.2688178-1/50x50", :large=>"https://avatars.yandex.net/get-music-content/34131/d3018a83.a.2688178-1/600x600", :medium=>"https://avatars.yandex.net/get-music-content/34131/d3018a83.a.2688178-1/300x300", :original=>"https://avatars.yandex.net/get-music-content/34131/d3018a83.a.2688178-1/1000x1000", :small=>"https://avatars.yandex.net/get-music-content/34131/d3018a83.a.2688178-1/100x100"}, :release_date=>"2015", :source=>{:id=>2688178, :links=>{:original=>"https://music.yandex.ru/album/2688178", :streaming=>"https://album.link/ya/2688178"}, :name=>"yandexmusic"}, :title=>"Cirkeln (Official Motion Picture Soundtrack)"}], :artist=>{:name=>"Kate Bush"}, :artists=>[{:name=>"Kate Bush", :source=>{:id=>15446, :name=>"yandexmusic"}}], :player_id=>"1", :source=>{:id=>2203363, :links=>{:original=>"https://music.yandex.ru/track/2203363", :streaming=>"https://song.link/ya/2203363"}, :name=>"yandexmusic"}, :title=>"Running Up That Hill (A Deal With God)"}}
        end

        def info_data
          {:track=>{:album=>{:source=>{:id=>218262, :name=>"yandexmusic"}, :title=>"The Whole Story"}, :artist=>{:name=>"Kate Bush"}, :artists=>[{:name=>"Kate Bush", :source=>{:id=>15446, :name=>"yandexmusic"}}], :audio=>{:link=>"https://s58iva.storage.yandex.net/get-mp3/9c8dd7122ee4f322fd0fe1284e7bfcf6/0005d01a2468e9c4/rmusic/U2FsdGVkX1-dHdau33KS9BgygZtVLRl0vfVAh4tLyT-cKIxJjcpltXMLY0aT2JkSr2ePYPRP9eYuVRil-1GgpO41hmRsGvO2M4AQpNZkij0/a828a9757bfa931ac102e93306ff966d8ba16d734bca6684801d9275b988042a/46551", :present=>true}, :duration=>298, :image=>{:extrasmall=>"https://avatars.yandex.net/get-music-content/38044/8eeff4ab.a.218262-1/50x50", :large=>"https://avatars.yandex.net/get-music-content/38044/8eeff4ab.a.218262-1/600x600", :medium=>"https://avatars.yandex.net/get-music-content/38044/8eeff4ab.a.218262-1/300x300", :original=>"https://avatars.yandex.net/get-music-content/38044/8eeff4ab.a.218262-1/1000x1000", :small=>"https://avatars.yandex.net/get-music-content/38044/8eeff4ab.a.218262-1/100x100"}, :player_id=>"1", :source=>{:id=>2203363, :links=>{:original=>"https://music.yandex.ru/track/2203363", :streaming=>"https://song.link/ya/2203363"}, :name=>"yandexmusic"}, :title=>"Running up That Hill (A Deal with God)"}}
        end

        def links_data
          {:track=>{:links=>{:original=>"https://music.yandex.ru/track/2203363", :streaming=>"https://song.link/ya/2203363"}}}
        end
      end
    end
  end
end
