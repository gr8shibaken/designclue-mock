module Mock
  class Designer
    attr_reader :id,:name,:flag,:product,:contest,:win,:ranking
    def initialize(id,name,flag,product,contest,win,ranking)
      @id       = id
      @name     = name
      @flag     = flag
      @product  = product
      @contest  = contest
      @win      = win
      @ranking  = ranking
    end
    def self.all
      DESIGNERS
    end
    def self.find(id)
      DESIGNERS[id.to_i-1]
    end
  end
end

DESIGNERS = []
YAML.load_file("#{__FILE__}.yml").each_with_index{|value,index|
  DESIGNERS << Mock::Designer.new(
    value['id'],value['name'],value['flag'],value['product'],value['contest'],value['win'],value['ranking']
  )
}
