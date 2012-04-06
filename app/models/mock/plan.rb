module Mock
  require 'yaml'
  class Plan
    attr_reader :plan_data
    def self.plan_read
      @plan_data = YAML.load_file("app/models/mock/plan.yml")
    end
  end
end
