class Backer
    
    @@all = []
    
    attr_reader :name
    
    def initialize(name)
        @name = name
        
    end
    
    def back_project(project)
        ProjectBacker.new(project, self)
        #Project.new(project, self)
    end
    
    def backed_projects
        #self.backed_projects
        ProjectBacker.all.select {|project| project.backer == self}
    end
    
end    