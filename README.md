# Ptolemy

TODO: Write a gem description

## Installation

Add this line to your application's Gemfile:

    gem 'ptolemy'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install ptolemy

## Usage

```ruby
ptolemy = Ptolemy::Client.new ECHONEST_API_KEY
    
# Search using The Echo Nest ID for Radiohead
results = ptolemy.search "ARH6W4X1187B99274F"
    
puts results[:rdio]  # "r91318"
puts results[:facebook] # "6979332244"
puts results[:spotify] # "4Z8W4fKeB5YxbusRsdQVPb"
```

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
