module MeetingRooms
  class Scheduler
    attr_reader :rooms_count

    def initialize(rooms_count = 2)
      @rooms_count = rooms_count
    end

    def schedule(meetings)
      rooms = (1..rooms_count).map { |room_number| Room.new(room_number) }
      room_index = 0

      meetings.each do |meeting|
        room = rooms[room_index]

        next if room.add_meeting(meeting)

        (1..rooms.size).each do |attempts_counter|
          i = (room_index + attempts_counter) % rooms.size
          if rooms[i].add_meeting(meeting)
            room_index = i
            break
          end
        end
      end

      rooms
    end
  end
end
