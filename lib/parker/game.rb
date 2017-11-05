module Parker
  class Game
    attr_accessor :identifier, :name, :screenshots

    def initialize(identifier, name)
      @identifier = identifier
      @name = name
      @screenshots = []
    end

    def copy_screenshots(output_path)
      copied_screenshots = 0

      screenshots.each do |screenshot|
        platform_path = File.join(output_path, name)
        new_file_path = File.join(platform_path, screenshot.filename)

        next if File.exist?(new_file_path)

        FileUtils.mkdir_p(platform_path) unless Dir.exist?(platform_path)
        FileUtils.cp(screenshot.path, new_file_path)

        copied_screenshots += 1
      end

      copied_screenshots
    end
  end
end