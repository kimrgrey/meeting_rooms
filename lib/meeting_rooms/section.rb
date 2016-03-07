module MeetingRooms
  class Section
    def initialize(capacity, start_at, suffix)
      @capacity = capacity
      @start_at = start_at
      @suffix = suffix
      @meetings = []
    end

    def add_meeting(meeting)
      return false unless has_enough_free_time?(meeting)
      @meetings << meeting
      @capacity -= meeting.duration
    end

    def has_enough_free_time?(meeting)
      @capacity >= meeting.duration
    end

    def capacity
      @capacity
    end

    def to_s
      start_at = @start_at * 60
      @meetings.map do |meeting|
        s = "%02d:%02d%s %s" % [ start_at / 60, start_at % 60, @suffix, meeting.to_s ]
        start_at += meeting.duration
        s
      end.join("\n")
    end
  end
end
