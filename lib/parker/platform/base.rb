# frozen_string_literal: true

module Parker
  module Platform
    # A base class for all platforms.
    class Base
      attr_reader :name, :source_path
      attr_accessor :games

      def initialize(name, source_path, game_data)
        @name = name || self.class.name.split('::').last
        @source_path = File.expand_path(source_path)
        @games = {}

        game_data&.map do |game_identifier, game_name|
          @games[game_identifier] = Game.new(game_identifier, game_name)
        end

        scan_games if Dir.exist?(@source_path)
      end

      def scan_games
        raise 'Must be implemented by a subclass'
      end
    end
  end
end
