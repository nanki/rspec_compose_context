# RspecComposeContext

Welcome to your new gem! In this directory, you'll find the files you need to be able to package up your Ruby library into a gem. Put your Ruby code in the file `lib/rspec_compose_context`. To experiment with that code, run `bin/console` for an interactive prompt.

TODO: Delete this and the text above, and describe your gem

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'rspec_compose_context'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install rspec_compose_context

## Usage

    require 'rspec_compose_context'

    RSpec.describe "sum" do
      shared_context 'a' do |value|
        let :a do
          value
        end
      end

      shared_context 'b' do |value|
        let :b do
          value
        end
      end

      shared_examples_for 'e' do
        it { is_expected.to eq 3 }
      end

      compose_context [:a, 1], [:b, 2], :e do
        subject do
          a + b
        end
      end
    end


## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/nanki/rspec_compose_context.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

