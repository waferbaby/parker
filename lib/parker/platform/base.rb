module Parker
  module Platform
    class Base
      attr_reader :name, :source_path
      attr_accessor :games

      def initialize(name, source_path, game_data)
        @name = name || self.class.name.split('::').last
        @source_path = source_path
        @games = {}

        unless game_data.nil?
          game_data.map do |identifier, name|
            @games[identifier] = Game.new(identifier, name)
          end
        end

        scan_games
      end

      def scan_games
        raise 'Must be implemented by a subclass'
      end
    end
  end
end