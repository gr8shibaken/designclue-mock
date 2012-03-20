module Mock
  class Category
    attr_reader :id,:name,:price,:image
    def initialize(id,name,price,image)
      @id     = id
      @name   = name
      @price  = price
      @image  = image
    end
    def self.all
      CATEGORIES
    end
    def self.find(id)
      if id
        CATEGORIES[id.to_i-1]
      else
        nil
      end
    end
  end
end

CATEGORIES = []
YAML.load_file("#{__FILE__}.yml").each_with_index{|value,index|
  CATEGORIES << Mock::Category.new(
    value['id'],value['name'],value['price'],value['image']
  )
}
