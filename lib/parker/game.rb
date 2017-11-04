module Parker
  class Game
    attr_accessor :name, :screenshots

    def initialize(name)
      @name = name
      @screenshots = []
    end

    def copy_screenshots(output_path)
      screenshots.each do |screenshot|
        platform_path = File.join(output_path, name)
        new_file_path = File.join(platform_path, screenshot.filename)

        next if File.exist?(new_file_path)

        FileUtils.mkdir(platform_path) unless Dir.exist?(platform_path)
        FileUtils.cp(screenshot.path, new_file_path)
      end
    end
  end
end