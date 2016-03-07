# MeetingRooms

## Installation

After checking out the repo, run `bin/setup` to install dependencies. You can also run `bin/console` for an interactive prompt that will allow you to experiment. Run `bundle exec meeting_rooms` to use the gem in this directory, ignoring other installed copies of this gem.


## Usage

The input contains one meeting per line; the meeting title can contain any characters and is followed by a space and the meeting duration, which is always given in minutes.

By default this application expects input from the STDIN, but there are some test files in `tests` directory. So, if you want to run an application against test file you can use pipeline:

```
cat tests/long_meetings_and_short_meetings.txt | bundle exec meeting_rooms
```

To run all tests and see the result just execute:

```
bundle exec meeting_rooms test
```

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/meeting_rooms. This project is intended to be a safe, welcoming space for collaboration.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).
