class Backer
    
    @@all = []
    
    attr_reader :name
    
    def initialize(name)
        @name = name
        
    end
    
    def back_project(project)
        Project.new(project, self)
    end
    
    def self.backed_projects
        Project.all.select {|project| project.backer == self}
    end
    
end    