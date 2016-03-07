module MeetingRooms
  class ParserError < StandardError; end;

  class Parser
    MEETING_REGEXP = /(.*)\s(\d+)min/

    def parse(file)
      meetings = []
      file.each_line { |line| meetings << parse_line(line) }
      meetings
    end

    def parse_line(line)
      match = MEETING_REGEXP.match(line)
      raise ParserError, "Invalid input string format" if match.nil? || match.size != 3
      Meeting.new(match[1], match[2].to_i)
    end
  end
end
