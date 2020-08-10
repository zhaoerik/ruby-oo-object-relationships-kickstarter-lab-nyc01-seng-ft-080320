class Backer

    attr_accessor :name
    def initialize(name)
        @name = name
    end

    def back_project(project)
        ProjectBacker.new(project, self)
    end

    def backed_projects
        project_array = []
        ProjectBacker.all.filter do |info|
            if info.backer == self
                project_array << info.project
            end
        end
        project_array
    end    
end