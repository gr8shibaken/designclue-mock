module Mock
  class Work
    attr_reader :id,:contest_id
    def initialize(id,contest_id)
      @id         = id
      @contest_id = contest_id
    end
    def self.all
      WORKS
    end
    def self.find(id)
      WORKS[id.to_i-1]
    end
  end
end

WORKS = []
YAML.load_file("#{__FILE__}.yml").each_with_index{|value,index|
  WORKS << Mock::Work.new(
    value['id'],value['contest_id']
  )
}
