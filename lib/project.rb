class Project
    
    attr_reader :title
    
    @@all = []
    
    def initialize(title)
        @title = title
        @@all << self
    end
    
    def add_backer(backer)
        Backer.new(backer, self)
    end
    
    def self.backers
        Backer.all.select {|backer| backer.project == self}
    end
    
end    
        