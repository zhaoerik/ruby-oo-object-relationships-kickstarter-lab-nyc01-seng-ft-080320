class Project
    
    attr_accessor :title
    
    def initialize(title)
        @title = title
    end

    def add_backer(backer)
        ProjectBacker.new(self, backer)
    end

    def backers
        array = []
        ProjectBacker.all.filter do |backer|
            if backer.project == self
                array << backer.backer
            end
        end
        array
    end
end
