require "pry"

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
        project_backers = ProjectBacker.all.select do |project_backers|
        project_backers.backer == self
    end
        project_backers.map do |project_backers|
        project_backers.project
    end
    end
        #self.backed_projects
        #ProjectBacker.all.select {|project| project.backer == self}
    #     project_backers =  ProjectBacker.all.select {|project_backers| 
    #     project_backers.backer == self}
        
    #     project_backers.map {|project_backers|}
    #     project_backers.project
    # end
  
  # binding.pry
end
    
# You are! BUT you are returning an array of the join tables instances

# Project <---> ProjectBacker <---> Backer

# You are getting to the ProjectBacker part

# BUT you need to get the actual Projects from each of the ProjectBacker instances in that array

# project_backers =  ProjectBacker.all.select {|project| project.backer == self}

# John Chriest 13 MINUTES AGO
# add that code, then put a binding.pry below it

# and check what project_backers looks like? or project_backers[0]
