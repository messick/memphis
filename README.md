# Memphis

An easy way to use The Echo Nest's Project Rosetta Stone to lookup IDs of other providers using a Echo Nest ID.

The [Decree of Memphis](http://en.wikipedia.org/wiki/Rosetta_Stone_decree) is the message that is inscribed on the actual Rosetta Stone.

## Installation

Add this line to your application's Gemfile:

    gem 'memphis'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install memphis

## Usage

```ruby
require 'memphis'

memphis = Memphis::Memphis.new ECHONEST_API_KEY
    
# Search using The Echo Nest ID for Radiohead
search_result = memphis.search "ARH6W4X1187B99274F"

# Show providers includeding in results

search_results.providers
=> ["7digital", "deezer", "echonest", "facebook", "jambase", "musicbrainz", "playme", "rdio", "rhapsody", "seat_geek", "song_meanings", "songkick", "spotify", "twitter", "who_sampled"]

# Show results
    
search_results.7digital # "304"
search_results.deezer # "399"
search_results.echonest # "Radiohead"
search_results.facebook # "6979332244"
search_results.jambase # "8317" 
search_results.musicbrainz # "a74b1b7f-71a5-4011-9441-d0b5e4122711"
search_results.playme # "1307"
search_results.rhapsody # "Art.4817"
search_results.rdio # "r91318"
search_results.seat_geek # "2570"
search_results.songkick # "253846"
search_results.song_meanings # "200"
search_results.spotify # "4Z8W4fKeB5YxbusRsdQVPb"
search_results.twitter # "radiohead"
search_results.who_sampled # "3309"
```

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
