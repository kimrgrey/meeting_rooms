module MeetingRooms
  class Room
    def initialize(room_number)
      @room_number = room_number

      @morning = Section.new(180, 9, "AM")
      @evening = Section.new(240, 1, "PM")
    end

    def add_meeting(meeting)
      @morning.add_meeting(meeting) || @evening.add_meeting(meeting)
    end

    def to_s
      [ title, @morning.to_s, lunch_title, @evening.to_s ].join("\n")
    end

    private

    def title
      "Room #{@room_number}:"
    end

    def lunch_title
      "12:00PM Lunch"
    end
  end
end
