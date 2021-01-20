class Project
    
    attr_reader :title
    
    @@all = []
    
    def initialize(title)
        @title = title
        @@all << self
    end
    
    def add_backer(backer)
        ProjectBacker.new(self, backer)
        # ProjectBacker.new(backer, self)
    end
    
    def self.backers
        Backer.all.select {|backer| backer.project == self}
    end
    
    def backers
        project_backers = ProjectBacker.all.select do |project_backers|
        project_backers.project == self
    end
        project_backers.map do |project_backers|
        project_backers.backer
    end
    end
    
end    
        