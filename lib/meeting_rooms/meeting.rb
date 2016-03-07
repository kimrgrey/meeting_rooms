module MeetingRooms
  class Meeting
    attr_accessor :title
    attr_accessor :duration

    def initialize(title, duration)
      @title = title
      @duration = duration
    end

    def to_s
      "#{title} #{duration}min"
    end
  end
end
