require 'digest'

module Parker
  module Platform
    class Playstation < Base
      def scan_games
        screenshots_path = File.join(source_path, '*', File::SEPARATOR, '*.jpg')

        Dir.glob(screenshots_path).each do |path|
          next if (path =~ /\_\d.jpg$/)

          (game_name, screenshot_date) = File.basename(path, File.extname(path)).split('_')
          game_id = Digest::SHA1.hexdigest(game_name)[0..9]

          games[game_id] ||= Game.new(game_name.sub('™', '').sub('_', ' -'))
          games[game_id].screenshots << Screenshot.new(path)
        end
      end
    end
  end
end