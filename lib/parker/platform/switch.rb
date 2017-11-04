module Parker
  module Platform
    class Switch < Base
      def scan_games
        screenshot_path = File.join(source_path, '**', '*.jpg')

        Dir.glob(screenshot_path).each do |path|
          game_id = File.basename(path, File.extname(path)).split('-')[-1]
          games[game_id].screenshots << Screenshot.new(path) if games[game_id]
        end
      end
    end
  end
end