module Mock
  require 'yaml'
  class Open
    attr_reader :open_data
    def self.open_read
      @open_data = YAML.load_file("app/models/mock/open.yml")
    end
  end
end
