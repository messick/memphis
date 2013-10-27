# Ptolemy

An easy way to use The Echo Nest's Project Rosetta Stone to lookup IDs of other providers using a Echo Nest ID.

## Installation

Add this line to your application's Gemfile:

    gem 'ptolemy'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install ptolemy

## Usage

```ruby
require 'ptolemy'

ptolemy = Ptolemy::Client.new ECHONEST_API_KEY
    
# Search using The Echo Nest ID for Radiohead
results = ptolemy.search "ARH6W4X1187B99274F"
    
results["7digital"] # "304"
results["deezer"] # "399"
results["echonest"] # "Radiohead"
results["facebook"] # "6979332244"
results["jambase"] # "8317" 
results["musicbrainz"] # "a74b1b7f-71a5-4011-9441-d0b5e4122711"
results["playme"] # "1307"
results["rhapsody"] # "Art.4817"
results["rdio"] # "r91318"
results["seat_geek"] # "2570"
results["songkick"] # "253846"
results["song_meanings"] # "200"
results["spotify"] # "4Z8W4fKeB5YxbusRsdQVPb"
results["twitter"] # "radiohead"
results["who_sampled"] # "3309"
```

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
