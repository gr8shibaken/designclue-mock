module Mock
  require 'yaml'
  class Tooltip
    attr_reader :tooltip_data
    def self.tooltip_read
      @tooltip_data = YAML.load_file("app/models/mock/tooltip.yml")
    end
  end
end
