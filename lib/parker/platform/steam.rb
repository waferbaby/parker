# frozen_string_literal: true

module Parker
  module Platform
    # A class that models the Steam platform.
    class Steam < Base
      def scan_games
        games.each do |identifier, game|
          screenshot_path = File.join(
            source_path,
            identifier.to_s,
            'screenshots',
            '*.jpg'
          )

          Dir.glob(screenshot_path).each do |path|
            game.screenshots << Screenshot.new(path)
          end
        end
      end
    end
  end
end
