# Grab

Grab provides an clean way to fetch multiple values from a hash. Instead of:

    def initialize(params)
      foo = params.fetch(:foo)
      bar = params.fetch(:bar)
    end

you can write:

    def initialize(params)
      foo, bar = params.grab(:foo, :bar)
    end

or if some of your params are optional:

    def initialize(params)
      foo, bar = params.values(:foo, :bar)
    end

## Installation

Add this line to your application's Gemfile:

    gem 'grab'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install grab

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Added some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
