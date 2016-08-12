# Igros

This is a CLI program for an interesting math trick I learned from my father.

I'm not sure how the trick works, I just know how to do it.

You ask someone to chose a number between 1 and 100 (theoretically it works for any number up to infinity, see below).
You then ask them to divide the number into 3 and give you the remainder (e.g. if the number was 10, 9/3=0 and then the remainder is 1).
Then ask them to divide their original number into 5 and give you the remainder, and then the same with 7.
You should now have 3 numbers, the remainders of dividing the original number into 3, 5 and 7, let's call them x3, x5 and x7 respectively.
Multiply these numbers as follows: x3 multiply by 70, x5 multiply by 21 and x7 multiply by 15. Add them all up and if it adds up to more than 100 (technically, 105) subtract 105 until you get the right number.

An example:
Let's take the number 31.
x3 = 30/3=3+1 = 1
x5 = 30/5=6+1 = 1
x7 = 28/7=4+3 = 3

x3*70 = 70
x5*21 = 21
x7*15 = 45
Total: 136

136-105 = 31


This trick can work for arbitrarily large numbers but you have to know in which group of 100 (technically 105) the original number is in.
The program however was written for the case where the original number is less than 105.
In the case of larger numbers you might have to ADD 105 instead of subtracting in order to get to the right number.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'igros'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install igros


## Development

After checking out the repo, run `bin/setup` to install dependencies. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/igros. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).
