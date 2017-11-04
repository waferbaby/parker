module Parker
  class Screenshot
    attr_reader :path
    attr_accessor :filename

    def initialize(path)
      @path = path

      parts = File.basename(@path).match(/(\d{4})(\d{2})(\d{2})(\d+).+(\.[a-z]{3})/)
      @filename = parts.to_a[1..-2].join('-') << parts[-1]
    end
  end
end