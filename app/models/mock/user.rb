module Mock
  class User
    attr_reader :id,:name,:type
    def initialize(id,name,type)
      @id   = id
      @name = name
      @type = type
    end
    def self.all
      USERS
    end
    def self.find(id)
      USERS[id.to_i-1]
    end
    def self.find_by_name(name)
      USERS.each{|user|
        return user if name == user.name
      }
      return USERS[0]
    end
  end
end

USERS = []
YAML.load_file("#{__FILE__}.yml").each_with_index{|value,index|
  USERS << Mock::User.new(
    value['id'],value['name'],value['type']
  )
}
