module Mock
  class Feedback
    attr_reader :id,:description
    def initialize(id,description)
      @id           = id
      @description  = description
    end
    def self.all
      FEEDBACKS
    end
    def self.find(id)
      FEEDBACKS[id.to_i-1]
    end
  end
end
FEEDBACKS = []
YAML.load_file("#{__FILE__}.yml").each_with_index{|value,index|
  FEEDBACKS << Mock::Feedback.new(
    value['id'],value['description']
  )
}
