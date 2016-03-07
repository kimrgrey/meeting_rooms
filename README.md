# MeetingRooms

## Installation

After checking out the repo, run `bin/setup` to install dependencies. You can also run `bin/console` for an interactive prompt that will allow you to experiment. Run `bundle exec meeting_rooms` to use the gem in this directory.


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

## Project structure

The project consists of the following elements:

- `Meeting` - represents a meeting, contains title and duration;
- `Parser` - responsible for parsing of input files, raises `ParserError` in case of wrong format;
- `Room` - represents a room, contains 2 `Section`: for morning meetings and for evening meetings;
- `Section` - represents a time frame for the room, it has capacity - amount of hours that is available for scheduling;
- `Scheduler` - represents an algorithm that selects room for the given meetings list;

Executable part of the application is located in `exe/meeting_rooms`.

## Improvements area

It's totally possible to improve this code. For example, it's good idea to decouple printing logic and models. At this moment printing is implemented using `#to_s` in different classes. I've decided to not use any testing frameworks because I'm not sure that it is expected from coding challenge, but I definitely would add it in the real application.

In original task there is no any quality parameters for the schedule, that's why meetings are not sorted and distributed as is.

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/kimrgrey/meeting_rooms. This project is intended to be a safe, welcoming space for collaboration.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).
