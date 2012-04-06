module Mock
  require 'yaml'
  class Option
    attr_reader :option_data
    def self.option_read
      @option_data = YAML.load_file("app/models/mock/option.yml")
    end
  end
end
