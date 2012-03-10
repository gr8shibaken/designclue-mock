module Mock
  class Contest
    attr_reader :id,:title,:price,:time,:client,:flag,:name,:subname,:industory,
                :usage,:format,:color,:parts,:type,:favarite,:url,:description,:logo,:design,:designer
    def initialize(id,title,price,time,client,flag,name,subname,industory,usage,format,color,
                   parts,type,favarite,url,description,logo,design,designer)
      @id         = id
      @title      = title
      @price      = price
      @time       = time
      @client     = client
      @flag       = flag
      @name       = name
      @subname    = subname
      @industory  = industory
      @usage      = usage
      @format     = format
      @color      = color
      @parts      = parts
      @type       = type
      @favarite   = favarite
      @url        = url
      @description= description
      @logo       = logo
      @design     = design
      @designer   = designer   
    end
    def self.all
      CONTESTS
    end
    def self.find(id)
      CONTESTS[id.to_i-1]
    end
  end
end

CONTESTS = []
YAML.load_file("#{__FILE__}.yml").each_with_index{|value,index|
  CONTESTS << Mock::Contest.new(
    value['id'],value['title'],value['price'],value['time'],value['client'],value['flag'],value['name'],
    value['subname'],value['industory'],value['usage'],value['format'],value['color'],value['parts'],
    value['type'],value['favorite'],value['url'],value['description'],value['logo'],value['design'],value['designer']
    )
}
