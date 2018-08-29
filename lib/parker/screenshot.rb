# frozen_string_literal: true

module Parker
  # A class that models a single game screenshot.
  class Screenshot
    attr_reader :path
    attr_accessor :filename

    def initialize(path)
      @path = path

      name_pattern = /(\d{4})(\d{2})(\d{2})(\d+).+(\.[a-z]{3})/
      base_name = File.basename(@path)

      parts = base_name.match(name_pattern)

      @filename = if parts
                    parts.to_a[1..-2].join('-') << parts[-1]
                  else
                    base_name
                  end
    end
  end
end
